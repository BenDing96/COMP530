//
// Created by 丁哲禹 on 2019-02-10.
//

#ifndef A2_MYDB_PAGERECITERATOR_H
#define A2_MYDB_PAGERECITERATOR_H

#include <Main/BufferMgr/headers/MyDB_BufferManager.h>
#include "MyDB_RecordIterator.h"
#include "MyDB_Record.h"
#include "MyDB_PageHandle.h"
#include "MyDB_PageReaderWriter.h"
#include "MyDB_Table.h"

using namespace std;

class MyDB_PageRecIterator;

class MyDB_PageReaderWriter;
typedef shared_ptr <MyDB_PageReaderWriter> MyDB_PageReaderWriterPtr;


class MyDB_PageRecIterator: public MyDB_RecIterator {

public:
    void getNext() override;

    bool hasNext() override;

    MyDB_PageRecIterator(MyDB_BufferManagerPtr buffer, MyDB_TablePtr table, long i, MyDB_RecordPtr myRecord);

private:
    MyDB_PageHandle page;
    MyDB_BufferManagerPtr buffer;
    MyDB_PageReaderWriterPtr pageRW;
    MyDB_RecordPtr record;
    // 设置size_t好还是int好
    size_t recordIndex;
};


#endif //A2_MYDB_PAGERECITERATOR_H
