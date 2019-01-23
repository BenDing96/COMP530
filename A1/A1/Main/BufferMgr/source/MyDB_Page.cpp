#ifndef PAGE_C
#define PAGE_C


#include <memory>
#include <iostream>

#include "MyDB_Page.h"
#include "MyDB_PageHandle.h"
#include "MyDB_BufferManager.h"
#include "MyDB_Table.h"


using namespace std;

// initialize  Page (whichTable is ptr which has already calculate the exact address.)
Page::Page(MyDB_TablePtr whichTable, long index, bool condition) {
    if (condition == true) {
        table = whichTable;
        i = index;
        pin = false;
        dirty = false;
        anonymous = false;
    }

    else {
        table = whichTable;
        i = index;
        pin = false;
        dirty = false;
        anonymous = true;
    }
}

// Re-pinned or unpin
void Page::setPin(bool condition) {
    pin = condition;
}

// After writing, set dirty to true.
void Page::write() {
    dirty = true;
}

pair<MyDB_TablePtr, long> Page::getIdentifier() {
    identifier.first = table;
    identifier.second = i;
    return identifier;
}

bool Page::isPin(){
    return pin;
}

bool Page::isDirty() {
    return dirty;
}

bool Page::isAnonymous() {
    return anonymous;
}

void Page::readFromDisk(MyDB_TablePtr whichTable, long i) {

}

void Page::writeToDisk(MyDB_TablePtr whichTable, long i) {

}



#endif
