#ifndef HOMEWORK_MYDB_PAGE_H
#define HOMEWORK_MYDB_PAGE_H

#include <iostream>

#include "MyDB_PageHandle.h"
#include "MyDB_BufferManager.h"
#include "MyDB_Table.h"

using namespace std;

class Page{
public:
    // initialize Page
    Page(bool _pin=false, bool _dirty=false, bool _anonymous=true);

    // set Pin
    void setPin(bool condition);

    bool getPin();

    bool getDirty();

    bool getAnonymous();

    // location of page
    void setLocation(char tableName, long index);

    // data in Page
    void* data();

    // read data from Disk
    void readFromDisk();

    // write to Disk
    void writeToDisk();


private:

    // whether pinned or not
    bool pin;

    // whether the page is dirty
    bool dirty;

    // default is anonymous page.
    bool anonymous;

    // location of the page contains tableName and num
    pair<char, int> location;


};

#endif //HOMEWORK_MYDB_PAGE_H
