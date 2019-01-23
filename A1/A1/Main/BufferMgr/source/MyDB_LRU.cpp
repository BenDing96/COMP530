//
// Created by 丁哲禹 on 2019-01-22.
//

#ifndef LRU_C
#define LRU_C

#include "MyDB_LRU.h"

#include <iostream>
#include <MyDB_LRU.h>


void LRU::insert(LRUNode *curNode) {
    curNum++;
    if(!isFull()) {
        if (head == nullptr) {
            head = curNode;
        }
        if (tail == nullptr)
            tail = curNode;
        else {
            tail -> setNext(curNode);
            tail = curNode;
        }
    } else {
        evict();
        tail->setNext(curNode);
        tail = curNode;
    }
}

void LRU::evict() {
    LRUNode *cur = head;
    LRUNode *pre = nullptr;
    while(cur->getValue().isPin()) {
        cur = cur->getNext();
        pre = cur;
    }
    cur->getNext()->setNext(pre);
    pre->setNext(cur->getNext());
    curNum--;
}

bool LRU::isFull() {
    if(curNum == fullsize)
        return true;
    else
        return false;
}

int LRU::getSize() const {
    return curNum;
}

LRUNode *LRU::getHead() const {
    return head;
}

LRUNode *LRU::getTail() const {
    return tail;
}

LRU::LRU(int fullsize) {
    this -> fullsize = fullsize;
}

bool LRU::isContain(const LRUNode *curNode) {
    return false;
}

#endif

