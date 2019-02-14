//
// Created by 丁哲禹 on 2019-02-10.
//

#ifndef A2_MYDB_TABLERECITERATOR_C
#define A2_MYDB_TABLERECITERATOR_C

#include <Main/DatabaseTable/headers/MyDB_TableRecIterator.h>

#include "MyDB_TableRecIterator.h"


bool MyDB_TableRecIterator::hasNext() {
    while(this->pageRecIterator->hasNext() == false) {
        this->pageIndex++;
        if (this->pageIndex > this->table->lastPage()) {
            pageIndex--;
            return false;
        }
        this->pageRecIterator = tableRW->operator[](this->pageIndex).getIterator(this->record);
    }
    return true;
}

void MyDB_TableRecIterator::getNext() {
    if (this->hasNext()){
        this->pageRecIterator->getNext();
    }

}

MyDB_TableRecIterator :: MyDB_TableRecIterator(MyDB_TableReaderWriter* myTableRW, MyDB_TablePtr myTable, MyDB_RecordPtr myRecord) {
    this->tableRW = myTableRW;
    this->table = myTable;
    this->record = myRecord;
    // 类型是make_shared<MyDB_PageReadWriter> (*this, this->forMe, iterateIntoMe);
    this->pageRecIterator = myTableRW->operator[](0).getIterator(myRecord);
    this->pageIndex = 0;
}


#endif //A2_MYDB_TABLERECITERATOR_C