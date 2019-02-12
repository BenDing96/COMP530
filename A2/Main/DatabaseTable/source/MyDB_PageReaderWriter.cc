
#ifndef PAGE_RW_C
#define PAGE_RW_C

#include <Main/DatabaseTable/headers/MyDB_PageReaderWriter.h>

#include "MyDB_PageReaderWriter.h"

void MyDB_PageReaderWriter :: clear () {
	headAddr->lastByte = 0;
	page->wroteBytes();
}

MyDB_PageType MyDB_PageReaderWriter :: getType () {
	return MyDB_PageType :: RegularPage;
}

MyDB_RecordIteratorPtr MyDB_PageReaderWriter :: getIterator (MyDB_RecordPtr) {
	return nullptr;
}

void MyDB_PageReaderWriter :: setType (MyDB_PageType) {
}

bool MyDB_PageReaderWriter :: append (MyDB_RecordPtr appendMe) {
	// 4是int字节的大小
	if (this->headAddr->lastByte + appendMe->getBinarySize() <= this->buffer->getPageSize() - 4){
		appendMe->toBinary(this->headAddr->data + this->headAddr->lastByte);
		this->headAddr->lastByte = this->headAddr->lastByte + (int) appendMe->getBinarySize();
		return true;
	} else {
		return false;
	}
}

MyDB_PageReaderWriter :: MyDB_PageReaderWriter(MyDB_BufferManagerPtr buffer, MyDB_TablePtr table, long i) {
	this->buffer = buffer;
	this->table = table;
	this->page = buffer->getPage(table, i);
	this->headAddr = (PageHeader *) this->page->getBytes();
}

#endif
