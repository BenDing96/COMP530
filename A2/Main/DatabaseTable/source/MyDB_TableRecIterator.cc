//
// Created by 丁哲禹 on 2019-02-10.
//

#ifndef A2_MYDB_TABLERECITERATOR_C
#define A2_MYDB_TABLERECITERATOR_C


#include "MyDB_TableRecIterator.h"


bool MyDB_TableRecIterator::hasNext() {
    while(!this->pageRecIterator->hasNext()) {
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
    this->pageIndex = 0;
    this->pageRecIterator = myTableRW->operator[](pageIndex).getIterator(myRecord);

}


#endif //A2_MYDB_TABLERECITERATOR_C