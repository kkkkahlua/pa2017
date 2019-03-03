#include "common.h"
#include "string.h"

typedef struct {
	char *name;
	uint32_t size;
	uint32_t disk_offset;
} file_info;

typedef struct {
	bool used;
	uint32_t index;
	uint32_t offset;
} Fstate;

enum {SEEK_SET, SEEK_CUR, SEEK_END};

static const file_info file_table[] = {
	{"1.rpg", 188864, 1048576}, {"2.rpg", 188864, 1237440},
	{"3.rpg", 188864, 1426304}, {"4.rpg", 188864, 1615168},
	{"5.rpg", 188864, 1804032}, {"abc.mkf", 1022564, 1992896},
	{"ball.mkf", 134704, 3015460}, {"data.mkf", 66418, 3150164},
	{"desc.dat", 16027, 3216582}, {"fbp.mkf", 1128064, 3232609},
	{"fire.mkf", 834728, 4360673}, {"f.mkf", 186966, 5195401},
	{"gop.mkf", 11530322, 5382367}, {"map.mkf", 1496578, 16912689},
	{"mgo.mkf", 1577442, 18409267}, {"m.msg", 188232, 19986709},
	{"mus.mkf", 331284, 20174941}, {"pat.mkf", 8488, 20506225},
	{"rgm.mkf", 453202, 20514713}, {"rng.mkf", 4546074, 20967915},
	{"sss.mkf", 557004, 25513989}, {"voc.mkf", 1997044, 26070993},
	{"wor16.asc", 5374, 28068037}, {"wor16.fon", 82306, 28073411},
	{"word.dat", 5650, 28155717},
};

#define NR_FILES (sizeof(file_table) / sizeof(file_table[0]))

Fstate files[NR_FILES + 3];

void ide_read(uint8_t *, uint32_t, uint32_t);
void ide_write(uint8_t *, uint32_t, uint32_t);

/* Please implement a simple file system here */

int fs_open(const char *pathname, int flags) {
//	panic("Please implement fs_open at fs.c");
	int i;
	for (i = 0; i < NR_FILES; ++i) {
		if (strcmp(file_table[i].name, pathname) == 0) break;
	}
	assert(i != NR_FILES);
	files[i + 3].used = 1;
	files[i + 3].index = i;
	files[i + 3].offset = 0;
	return i + 3;
}

size_t fs_read(int fd, void *buf, size_t len) {
	assert(fd > 2);
	assert(files[fd].used);
//	panic("Please implement fs_read at fs.c");
	int idx = files[fd].index;
	int temp = len;
//	int flag = 0;
	if (file_table[idx].size - files[fd].offset < len) {
//		flag = 1;
		len = file_table[idx].size - files[fd].offset;
	}
//	Log("%x %x %x %x %x", idx, len, files[fd].offset, file_table[idx].size, file_table[idx].disk_offset);
	if (files[fd].offset > file_table[idx].size || len == 0) {
		*(char*)buf = '\0';
		return 0;
	}
	ide_read(buf, file_table[idx].disk_offset + files[fd].offset, len);
	files[fd].offset += len;
//	Log("%x %x %x %x %x", idx, len, files[fd].offset, file_table[idx].size, file_table[idx].disk_offset);
//	return flag ? 0 : len;
	return temp;
}

size_t fs_write(int fd, void *buf, size_t len) {
	assert(fd <= 2);
#ifdef HAS_DEVICE_SERIAL
	int i;
	extern void serial_printc(char);
	for(i = 0; i < len; i ++) {
		serial_printc( ((char *)buf)[i] );
	}
#else
	asm volatile(".byte 0x82" : "=a" (len) : "a"(4), "b"(fd), "c"(buf), "d"(len));
#endif

	return len;
}

off_t fs_lseek(int fd, off_t offset, int whence) {
	assert(fd > 2);
	assert(files[fd].used);
//	panic("Please implement fs_lseek at fs.c");
	int idx = files[fd].index;
	switch (whence) {
		case SEEK_SET: files[fd].offset = 0; break;
		case SEEK_CUR: break;
		case SEEK_END: files[fd].offset = file_table[idx].size; break;
		default: break;
	}
	files[fd].offset += offset;
/*	if (files[fd].offset >= file_table[idx].size) {
		Log("%x %x %x %x", whence, offset, files[fd].offset, file_table[idx].size);
	}
	assert(files[fd].offset < file_table[idx].size);*/
	return files[fd].offset;
}

int fs_close(int fd) {
	assert(fd > 2);
	assert(files[fd].used);
//	panic("Please implement fs_close at fs.c");
	files[fd].used = 0;
	return 0;
}
