//
// Created by Wangjj on 2019-01-24.
//

#ifndef A1_MYDB_PAGE_H
#define A1_MYDB_PAGE_H

#include <iostream>
#include <zconf.h>

#include "MyDB_Page.h"
#include "MyDB_BufferManager.h"
#include "MyDB_Table.h"
#include "Node.h"

class Page {
private:
    char* bufferAddr = nullptr;
    int slotId = 0;
    int handleNum = 0;
    int pageSize = 0;
    bool isAnonymous;
    bool dirty = false;
    bool isPin = false;
    Node* node;
    pair<MyDB_TablePtr, long> PageId;

public:
    // Initialize anonymous page
    Page(int pageSize);

    // Initialize non-anonymous page
    Page(MyDB_TablePtr whichTable, long i, int pageSize);


    Node *getNode() const;

    void setNode(Node *node);


    bool isIsPin() const;

    bool isIsAnonymous() const;


    void setBufferAddr(char *bufferAddr);

    char *getBufferAddr() const;


    void setDirty(bool dirty);

    bool isDirty() const;


    void setPin();

    void undoPin();


    int getHandleNum() const;

    void addHandleNum();

    void deHandleNum();
    

    pair<MyDB_TablePtr, long> getPageId();

    int getSlotId() const;

    void setSlotId(int slotId);

};


#endif //A1_MYDB_PAGE_H
