//
// Created by 丁哲禹 on 2019-01-22.
//

#ifndef A1_NODE_H
#define A1_NODE_H

template <class Data>
class Node {

private:

    Node *pre;
    Data *holdMe;
    Node *next;

public:

    void setValue(Data *value){
        holdMe = value;
    };

    void setNext(Node *nextNode){
        next = nextNode;
    }

    void setPre(Node *preNode){
        pre = preNode;
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
#endif //A1_NODE_H
