#include "nemu.h"
#include "cpu/reg.h"
#include "ctype.h"
#include "memory/memory.h"
#include "monitor/breakpoint.h"
#include <stdlib.h>

/* We use the POSIX regex functions to process regular expressions.
 * Type 'man regex' for more information about POSIX regex functions.
 */
#include <sys/types.h>
#include <regex.h>

enum {
	NOTYPE = 256, EQ, DECI, NEG, SUB, MUL, DEREF, NE, HEX, AND, OR, REG, STR

	/* TODO: Add more token types */

};

static struct rule {
	char *regex;
	int token_type;
} rules[] = {

 	/* TODO: Add more rules.
	 * Pay attention to the precedence level of different rules.
	 */

	{" +",	NOTYPE},				// white space
	{"\\+", '+'},
	{"\\0[xX][0-9a-fA-F]+", HEX},
	{"[0-9]+", DECI},
	{"\\$[a-z]{3}", REG},
	{"-", '-'},
	{"\\(", '('},
	{"\\)", ')'},
	{"\\*", '*'},
	{"/", '/'},
	{"!=", NE},
	{"==", EQ},
	{"&&", AND},
	{"\\|\\|", OR},
	{"!", '!'},
	{"[a-zA-Z0-9_]+", STR}
};

#define NR_REGEX (sizeof(rules) / sizeof(rules[0]) )

static regex_t re[NR_REGEX];

/* Rules are used for more times.
 * Therefore we compile them only once before any usage.
 */
void init_regex() {
	int i;
	char error_msg[128];
	int ret;

	for(i = 0; i < NR_REGEX; i ++) {
		ret = regcomp(&re[i], rules[i].regex, REG_EXTENDED);
		if(ret != 0) {
			regerror(ret, &re[i], error_msg, 128);
			assert(ret != 0);
		}
	}
}

typedef struct token {
	int type;
	char str[32];
} Token;

Token tokens[32];
int nr_token;

static bool make_token(char *e) {
	int position = 0;
	int i;
	regmatch_t pmatch;
	
	nr_token = 0;

//	printf("%s\n", e);

	while(e[position] != '\0') {
		/* Try all rules one by one. */
		for(i = 0; i < NR_REGEX; i ++) {
			if(regexec(&re[i], e + position, 1, &pmatch, 0) == 0 && pmatch.rm_so == 0) {
				char *substr_start = e + position;
				int substr_len = pmatch.rm_eo;

//				printf("match regex[%d] at position %d with len %d: %.*s\n", i, position, substr_len, substr_len, substr_start);
				position += substr_len;

				/* TODO: Now a new token is recognized with rules[i]. 
				 * Add codes to perform some actions with this token.
				 */
				if (rules[i].token_type == NOTYPE) break;
				
				memcpy(tokens[nr_token].str, substr_start, substr_len);
				tokens[nr_token].str[substr_len] = '\0';


				switch(rules[i].token_type) {
					default: tokens[nr_token].type = rules[i].token_type;
							 nr_token ++;
				}

				break;
			}
		}

		if(i == NR_REGEX) {
			printf("no match at position %d\n%s\n%*.s^\n", position, e, position, "");
			return false;
		}
	}
//	printf("tot : %d\n", nr_token);
	return true; 
}

void process() {
	for (int i = 0; i < nr_token - 1; ++i) {
		if (tokens[i].type == '-') {
			if (i == 0 || (tokens[i - 1].type != STR && tokens[i - 1].type != DECI  && tokens[i - 1].type != HEX && tokens[i - 1].type != REG && tokens[i - 1].type != ')')) tokens[i].type = NEG;
			else tokens[i].type = SUB;
		}
		else if (tokens[i].type == '*') {
			if (i == 0 || (tokens[i - 1].type != STR && tokens[i - 1].type != DECI && tokens[i - 1].type != HEX && tokens[i - 1].type != REG && tokens[i - 1].type != ')')) tokens[i].type = DEREF;
			else tokens[i].type = MUL;
		}
	}
}

bool check_parentheses(int l, int r, bool* error) {
	int tot = 0;
	bool ret = tokens[l].str[0] == '(' && tokens[r].str[0] == ')';
	for (int i = l; i <= r; ++i) {
		if (tokens[i].str[0] == '(') { ++tot; continue; }
		if (tokens[i].str[0] == ')') {
			--tot;
			if (tot == 0 && i != r) ret = false;
			else if (tot < 0) { *error = true; return false; }
		}
	}
	return ret;
}

int dominant(int l, int r) {
	int tot = 0, mn = 1010, p = -1;
	for (int i = l; i <= r; ++i) {
		if (tokens[i].type == DECI || tokens[i].type == HEX || tokens[i].type == REG || tokens[i].type == STR) continue;
		if (tokens[i].type == '(') { ++tot; continue; }
		if (tokens[i].type == ')') { --tot; continue; }
		if (tot) continue;
		int rank;
		switch (tokens[i].type) {
			case AND :
			case OR : rank = 0; break;
			case EQ :
			case NE : rank = 1; break;
			case '+' : 
			case SUB : rank = 2; break;
			case MUL :
			case '/' : rank = 3; break;
			case '!' :
			case NEG :
			case DEREF : rank = 4; break;
			default : printf("%c\n", tokens[i].type); assert(0);
		}
		if (rank <= mn) mn = rank, p = i;
	}
//	printf("%d\n", p);
	return p;
}

int val(int id, bool* success) {
	if (tokens[id].type == DECI) {
		char* s = tokens[id].str;
		int x = 0, len = strlen(s);
		for (int i = 0; i < len; ++i) {
			x = x * 10 + s[i] - '0';
		}
		return x;
	}
	if (tokens[id].type == HEX) {
		char* s = tokens[id].str + 2;
		int x = 0, len = strlen(s);
		for (int i = 0; i < len; ++i) {
			x *= 16;
			if (isdigit(s[i])) x += s[i] - '0';
			else if (isupper(s[i])) x += s[i] - 'A' + 10;
			else x += s[i] - 'a' + 10;
		}
		return x;
	}
	if (tokens[id].type == REG) {
		char* s = tokens[id].str + 1;
		return get_reg_val(s, success);
	}
	if (tokens[id].type == STR) {
		char* s = tokens[id].str;
	//	return symtab[0].st_value;
		return look_up_symtab(s, success);
	}
	*success = false;
	return 0;
}

int eval(int p, int q, bool* error) {
//	printf("%d %d\n", p, q);
	if (*error) return 0;
	if (p > q) {
		*error = true;
		return 0;
	}
	if (p == q) {
		bool success = true;
		int value = val(p, &success);
		if (!success) {
			*error = true;
			return 0;
		}
		return value;
	}
	bool flag = check_parentheses(p, q, error);
	if (flag) return eval(p + 1, q - 1, error);
	if (*error) return 0;
	int op = dominant(p, q);
//	printf("%d\n", op);
	if (op == p) {
		switch (tokens[op].type) {
			case NEG : return -eval(op + 1, q, error);
			case '!' : return !eval(op + 1, q, error);
			case DEREF : return vaddr_read(eval(op + 1, q, error), SREG_DS, 4);
			default : *error = true; return 0;
		}
	}
//	printf("DOMINANT : %d\n", op);
	int val1 = eval(p, op - 1, error);
	int val2 = eval(op + 1, q, error);
	switch (tokens[op].type) {
		case '+': return val1 + val2;
		case SUB: return val1 - val2;
		case MUL: return val1 * val2;
		case '/': return val1 / val2;
		case AND: return val1 && val2;
		case OR: return val1 || val2;
		case EQ : return val1 == val2;
		case NE : return val1 != val2;
		default: *error = true; return 0;
	}
}

uint32_t expr(char *e, bool *success) {
//	printf("%s\n", e);
	if(!make_token(e)) {
		*success = false;
		return 0;
	}
	process();
	bool error = false;
	uint32_t ans = eval(0, nr_token - 1, &error);
	if (error) {
		*success = false;
		return 0;
	}
	else return ans;
}

