//
// Created by Wangjj on 2019-01-24.
//

#ifndef A1_MYDB_PAGE_H
#define A1_MYDB_PAGE_H

#include <iostream>


#include "MyDB_Page.h"
#include "MyDB_BufferManager.h"
#include "MyDB_Table.h"
#include "Node.h"

class Page {
public:
private:
    char* bufferAddr = nullptr;
    int slotId = 0;
    int handleNum = 0;
    bool isAnonymous;
    bool dirty = false;
    bool isPin = false;

    pair<MyDB_TablePtr, long> PageId;
    Node* node;



public:
    // Initialize anonymous page
    Page();

    // Initialize non-anonymous page
    Page(MyDB_TablePtr whichTable, long i);


    int getSlotId() const;

    void setSlotId(int slotId);


    Node *getNode() const;

    void setNode(Node *node);


    bool isIsPin() const;

    void setPin();

    void undoPin();


    bool isIsAnonymous() const;


    void setBufferAddr(char *bufferAddr);

    char *getBufferAddr() const;


    void setDirty(bool dirty);

    bool isDirty() const;



    int getHandleNum() const;

    void addHandleNum();

    void deHandleNum();


    pair<MyDB_TablePtr, long> getPageId();


};


#endif //A1_MYDB_PAGE_H
