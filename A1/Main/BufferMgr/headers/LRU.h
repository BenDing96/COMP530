//
// Created by Wangjj on 2019-01-24.
//

#ifndef A1_LRU_H
#define A1_LRU_H

#include "MyDB_Page.h"
#include "MyDB_BufferManager.h"
#include "Node.h"

class Node;

class LRU {
public:
    LRU(int fullSize);

    Node* evict();

    void insert(Node* node);

    void update(Node* node);

    bool isEmpty();

    Node* finalEvict();


private:
    int fullSize;
    int curSize = 0;
    Node* tail = nullptr;
    Node* head = nullptr;

};




#endif //A1_LRU_H
