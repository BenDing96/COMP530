#ifndef HOMEWORK_MYDB_PAGE_H
#define HOMEWORK_MYDB_PAGE_H

#include "MyDB_PageHandle.h"
#include "MyDB_BufferManager.h"

using namespace std;

class Page{
public:
    // whether pinned or not
    bool pin();

    // whether the page is dirty
    bool dirty();

    // location of
    void location();

    // data in Page
    void data();

    // read data from Disk
    void readFromDisk();


};

#endif //HOMEWORK_MYDB_PAGE_H
