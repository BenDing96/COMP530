
#ifndef PAGE_RW_C
#define PAGE_RW_C

#include <Main/DatabaseTable/headers/MyDB_PageReaderWriter.h>

#include "MyDB_PageReaderWriter.h"

void MyDB_PageReaderWriter :: clear () {
	headAddr->lastByte = 0;
	setType(MyDB_PageType :: RegularPage);
	page->wroteBytes();
}

MyDB_PageType MyDB_PageReaderWriter :: getType () {
	return MyDB_PageType :: RegularPage;
}

MyDB_RecordIteratorPtr MyDB_PageReaderWriter :: getIterator (MyDB_RecordPtr myRecord) {
	MyDB_RecordIteratorPtr pageRecIterator = make_shared <MyDB_PageRecIterator> (this->buffer, this->table, this->index, myRecord);
	return pageRecIterator;
}

void MyDB_PageReaderWriter :: setType (MyDB_PageType myPageType) {
	this->headAddr->pageType = myPageType;
}

bool MyDB_PageReaderWriter :: append (MyDB_RecordPtr appendMe) {

	if (this->headAddr->lastByte + appendMe->getBinarySize() + this->headSize <= this->buffer->getPageSize()){
		appendMe->toBinary( (char*)this->headAddr + this->headSize + this->headAddr->lastByte);
		this->headAddr->lastByte += (int) appendMe->getBinarySize();
		this->page->wroteBytes();
		return true;
	} else {
		return false;
	}
}

PageHeader* MyDB_PageReaderWriter :: getPageHeader() {
	return this->headAddr;
}

size_t MyDB_PageReaderWriter :: getPageHeaderSize() {
	return this->headSize;
}

MyDB_PageReaderWriter :: MyDB_PageReaderWriter(MyDB_BufferManagerPtr myBuffer, MyDB_TablePtr myTable, long i) {
	this->buffer = myBuffer;
	this->table = myTable;
	this->page = myBuffer->getPage(myTable, i);
	this->headAddr = (PageHeader *) this->page->getBytes();
	this->headSize = sizeof(headAddr->pageType) + sizeof(headAddr->lastByte);
	this->index = i;
}



#endif
