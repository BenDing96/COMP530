#ifndef HOMEWORK_MYDB_PAGE_H
#define HOMEWORK_MYDB_PAGE_H

#include <iostream>

#include "MyDB_PageHandle.h"
#include "MyDB_BufferManager.h"
#include "MyDB_Table.h"

using namespace std;

class Page{
public:

    // initialize  Page (whichTable is ptr which has already calculate the exact address.)
    Page(MyDB_TablePtr whichTable, long i, bool condition);

    // Buffer address
    MyDB_BufferManager* bufferAddress;

    bool isPin();

    bool isDirty();

    bool isAnonymous();

    // set Pin
    void setPin(bool condition);

    // set Dirty
    void write();

    // Page ID
    pair<MyDB_TablePtr, long> getIdentifier();

    // read data from Disk
    void readFromDisk(MyDB_TablePtr whichTable, long i);

    // write to Disk
    void writeToDisk(MyDB_TablePtr whichTable, long i);

    bool getPin();

private:

    // whether pinned or not
    bool pin;

    // whether the page is dirty
    bool dirty;

    // default is anonymous page.
    bool anonymous;

    // table address
    MyDB_TablePtr table;

    // which page
    long i;

    // identifier
    pair<MyDB_TablePtr, long> identifier;

};

#endif //HOMEWORK_MYDB_PAGE_H
