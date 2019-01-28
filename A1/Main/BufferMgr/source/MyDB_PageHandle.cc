
#ifndef PAGE_HANDLE_C
#define PAGE_HANDLE_C

#include <memory>
#include "MyDB_PageHandle.h"

void *MyDB_PageHandleBase :: getBytes () {  //返回的是buffer addr
    if(page->getBufferAddr() != nullptr) {
	    buffer->update(page);
        return page->getBufferAddr();
	} else {
		if(buffer->space.empty()) {
			buffer->evict(page); // evict中设置了page buffer address
		} else {
		    char* addr = buffer->space.back();
		    buffer->space.pop_back();
		    page->setBufferAddr(addr);
			buffer->insert(page);
		}
        return page->getBufferAddr();
	}
}

void MyDB_PageHandleBase :: wroteBytes () {
	page->setDirty(true);
}

MyDB_PageHandleBase :: ~MyDB_PageHandleBase () {
	page->deHandleNum();
	if(page->getHandleNum() == 0 && page->isIsAnonymous()){
	    page->undoPin();
        this->buffer->anonymousSpace.push_back(page->getTempId());
	}
}


Page *MyDB_PageHandleBase::getPage() const {
	return page;
}

MyDB_PageHandleBase::MyDB_PageHandleBase(Page *page, MyDB_BufferManager *buffer) : page(page), buffer(buffer) {
	this->page = page;
	this->buffer = buffer;
}

#endif

