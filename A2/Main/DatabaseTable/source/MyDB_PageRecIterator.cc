//
// Created by 丁哲禹 on 2019-02-10.
//
#ifndef A2_MYDB_PAGERECITERATOR_C
#define A2_MYDB_PAGERECITERATOR_C


#include "MyDB_PageRecIterator.h"
#include "MyDB_PageReaderWriter.h"

void MyDB_PageRecIterator :: getNext () {
    if(this->hasNext()){
        void *pos = this->recordIndex + this->pageRW->getPageHeaderSize() + (char *) this->page->getBytes ();
        void *newPos = this->record->fromBinary (pos);
        this->recordIndex += (char*)newPos - (char*)pos;
    }
}

bool MyDB_PageRecIterator :: hasNext() {
    if (this->page->getBytes() != NULL) {
        if (this->pageRW->getPageHeader()->lastByte <= this->recordIndex) {
            return false;
        } else {
            return true;
        }
    }
}

MyDB_PageRecIterator :: MyDB_PageRecIterator(MyDB_BufferManagerPtr myBuffer, MyDB_TablePtr myTable, long i, MyDB_RecordPtr myRecord) {
    this->buffer = myBuffer;
    this->page = myBuffer->getPage(myTable, i);
    this->pageRW = make_shared<MyDB_PageReaderWriter> (myBuffer, myTable, i);
    this->recordIndex = 0;
    this->record = myRecord;
}

#endif