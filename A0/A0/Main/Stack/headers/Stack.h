#ifndef STACK_H
#define STACK_H

#include <iostream>

using namespace std;

// this is the node class used to build up the LIFO stack
template <class Data>
class Node {

private:

    Data holdMe;
    Node *next;

public:

    /*****************************************/
    /** WHATEVER CODE YOU NEED TO ADD HERE!! */
    /*****************************************/
    void setValue(Data value){
        holdMe = value;
    };

    void setNext(Node *nextNode){
        next = nextNode;
    }

    Data getValue(){
        return holdMe;
    }

    Node *getNext(){
        return next;
    }

};

// a simple LIFO stack
template <class Data>
class Stack {

    Node <Data> *head;

public:

    // destroys the stack
    ~Stack () {
        while(head!= NULL){
            Node<Data> *temp;
            temp = head;
            head = head->getNext();
            delete(temp);
        }
    }

    // creates an empty stack
    Stack () {
        head = NULL;
    }

    // adds pushMe to the top of the stack
    void push (Data value) {
        Node<Data> *node = new Node<Data>;
        node->setValue(value);
        node->setNext(head);
        head = node;
    }

    // return true if there are not any items in the stack
    bool isEmpty () {
        if (head == NULL)
            return true;
        else
            return false;
    }

    // pops the item on the top of the stack off, returning it...
    // if the stack is empty, the behavior is undefined
    Data pop () {
        Data value = head->getValue();
        Node<Data> *temp = head;
        head = head->getNext();
        delete(temp);
        return value;
    }
};

#endif