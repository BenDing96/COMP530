//
// Created by Wangjj on 2019-01-25.
//

#include "Node.h"


Page *Node::getPage() const {
    return page;
}

Node *Node::getPre() const {
    return pre;
}

Node *Node::getNext() const {
    return next;
}


void Node::setPre(Node *pre) {
    Node::pre = pre;
}

void Node::setNext(Node *next) {
    Node::next = next;
}

Node::Node(Page* page){
    this->page = page;
    this->pre = nullptr;
    this->next = nullptr;
};



