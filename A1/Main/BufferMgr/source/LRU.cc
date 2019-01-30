//
// Created by Wangjj on 2019-01-24.
//

#include "LRU.h"

class LRU;

LRU::LRU(int fullSize) {
    this->curSize = 0;
    this->fullSize = fullSize;
}

void LRU::insert(Node *node) {
    curSize++;
    if (curSize<=fullSize){
        if(curSize == 1) {
            head = node;
            tail = node;
        } else {
            tail->setNext(node);
            node->setPre(tail);
            tail = node;
        }
    }
}

void LRU::update(Node *node) {
    Node* dummyHead = new Node(nullptr);
    Node* dummyTail = new Node(nullptr);
    head->setPre(dummyHead);
    tail->setNext(dummyTail);
    dummyHead->setNext(head);
    dummyTail->setPre(tail);

    Node* preNode = node->getPre();
    Node* nextNode = node->getNext();

    nextNode->setPre(preNode);
    preNode->setNext(nextNode);

    node->setNext(dummyTail);
    node->setPre(dummyTail->getPre());

    dummyTail->getPre()->setNext(node);
    dummyTail->setPre(node);

    head = dummyHead->getNext();
    tail = dummyTail->getPre();

    delete dummyHead;
    delete dummyTail;
    tail->setNext(nullptr);
    head->setPre(nullptr);
}

Node* LRU::evict() {
    Node* dummyHead = new Node(nullptr);
    Node* dummyTail = new Node(nullptr);
    head->setPre(dummyHead);
    tail->setNext(dummyTail);
    dummyHead->setNext(head);
    dummyTail->setPre(tail);

    Node* node = head;
    while(node->getPage()->isIsPin()) {
        node = node->getNext();
    }

    Node* preNode = node->getPre();
    Node* nextNode = node->getNext();

    nextNode->setPre(preNode);
    preNode->setNext(nextNode);

    node->setNext(nullptr);
    node->setPre(nullptr);

    if (dummyHead->getNext() == dummyTail){
        head = nullptr;
        tail = nullptr;
    }else{
        head = dummyHead->getNext();
        tail = dummyTail->getPre();
        tail->setNext(nullptr);
        head->setPre(nullptr);
    }

    delete dummyHead;
    delete dummyTail;

    curSize--;
    return node;
}

bool LRU::isEmpty() {
    return head == nullptr;
}

Node* LRU::finalEvict() {
    Node* dummyHead = new Node(nullptr);
    Node* dummyTail = new Node(nullptr);
    head->setPre(dummyHead);
    tail->setNext(dummyTail);
    dummyHead->setNext(head);
    dummyTail->setPre(tail);

    Node* node = head;

    Node* preNode = node->getPre();
    Node* nextNode = node->getNext();

    nextNode->setPre(preNode);
    preNode->setNext(nextNode);

    node->setNext(nullptr);
    node->setPre(nullptr);

    if (dummyHead->getNext() == dummyTail){
        head = nullptr;
        tail = nullptr;
    }else{
        head = dummyHead->getNext();
        tail = dummyTail->getPre();
        tail->setNext(nullptr);
        head->setPre(nullptr);
    }

    delete dummyHead;
    delete dummyTail;

    curSize--;
    return node;
}

