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
    int slotId = 0; // 匿名page的在tempFile中的位置
    pair<MyDB_TablePtr, long> PageId; // 非匿名page的id

public:
    int getTempId() const; // 返回slotId

    void setTempId(int slotId); //  设置slotId

private:
    bool isAnonymous;
    bool dirty = false;
    bool isPin = false;

    int handleNum = 0;
    Node* node;


public:
    Node *getNode() const;

    void setNode(Node *node);

    bool isIsPin() const;

    Page();  //匿名的构造函数

    Page(MyDB_TablePtr whichTable, long i); //非匿名的构造函数

    bool isIsAnonymous() const;

    void setBufferAddr(char *bufferAddr);

    void setDirty(bool dirty);

    char *getBufferAddr() const;

    bool isDirty() const;

    void setPin();

    int getHandleNum() const;

    void undoPin();

    void addHandleNum();

    void deHandleNum();

    pair<MyDB_TablePtr, long> getPageId();


};


#endif //A1_MYDB_PAGE_H
