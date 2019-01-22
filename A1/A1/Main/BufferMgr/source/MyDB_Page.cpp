#ifndef PAGE_C
#define PAGE_C

#include "MyDB_Page.h"
#include <memory>

using namespace std;

//initialize page
Page::Page(bool _pin, bool _dirtty, bool _anonymous) {
    pin = _pin;
    dirty = _dirtty,;
    anonymous = _anonymous;
}

void Page::setPin(bool condition) {
    pin = condition;
}

// set where the page store
void Page::setLocation(char tableName, long index) {
    location.first = tableName;
    location.second = index;
    anonymous = false;
}

bool Page::getPin(){
    return pin;
}

bool Page::getDirty() {
    return dirty;
}

bool Page::getAnonymous() {
    return anonymous;
}

void Page::readFromDisk() {

}

void Page::writeToDisk() {

}


#endif
