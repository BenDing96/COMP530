#ifndef HOMEWORK_MYDB_LRU_H
#define HOMEWORK_MYDB_LRU_H

#include "MyDB_Page.h"
#include "Node.h"

typedef  Node<Page> LRUNode;
class LRU{
public:
    LRU(int fullsize);

    bool isContain(const LRUNode *curNode);
    
    bool isFull();
    
    void evict();
    
    void insert(LRUNode *curNode);

    int getSize() const;

    LRUNode *getHead() const;

    LRUNode *getTail() const;

private:
    int fullsize;
    int curNum;
    LRUNode *head;
    LRUNode *tail;

};
#endif //HOMEWORK_MYDB_LRU_H