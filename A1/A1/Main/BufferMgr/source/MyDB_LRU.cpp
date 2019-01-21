
#ifndef PAGE_HANDLE_C
#define PAGE_HANDLE_C

#include "MyDB_LRU.cpp"

template <class Data>
class Node {

private:

    Node *pre;
    Data holdMe;
    Node *next;

public:

    void setValue(Data value){
        holdMe = value;
    };

    void next(Node *nextNode){
        next = nextNode;
    }

    void pre(Node *preNode){
        next = preNode;
    }

    Data getValue(){
        return holdMe;
    }

    Node *getNext(){
        return next;
    }

    Node *getPre(){
        return pre;
    }

};

#endif