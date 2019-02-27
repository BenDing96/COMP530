//
// Created by 丁哲禹 on 2019-02-10.
//

#ifndef A2_MYDB_TABLERECITERATOR_H
#define A2_MYDB_TABLERECITERATOR_H

#include "MyDB_RecordIterator.h"
#include "MyDB_Table.h"
#include "MyDB_TableReaderWriter.h"
#include "MyDB_PageReaderWriter.h"
#include "MyDB_PageRecIterator.h"

using namespace std;

class MyDB_TableRecIterator: public MyDB_RecIterator {

public:
    MyDB_TableRecIterator(MyDB_TableReaderWriter* myTableRW, MyDB_TablePtr myTable, MyDB_RecordPtr myRecord);

    bool hasNext() override;

    void getNext() override;

private:
    MyDB_TableReaderWriter* tableRW;
    MyDB_TablePtr table;
    MyDB_RecordPtr record;
    MyDB_RecordIteratorPtr pageRecIterator;
    long pageIndex;
};


#endif //A2_MYDB_TABLERECITERATOR_H
