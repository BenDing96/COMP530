//
// Created by Wangjj on 2019-01-25.
//

#ifndef A1_NODE_H
#define A1_NODE_H

#include "MyDB_Page.h"
class Page;

class Node {
public:
    Page *getPage() const;

    Node *getPre() const;

    void setPre(Node *pre);

    void setNext(Node *next);

    Node *getNext() const;

    Node(Page* page);



private:
    Page *page;
    Node *pre;
    Node *next;

};


#endif //A1_NODE_H
