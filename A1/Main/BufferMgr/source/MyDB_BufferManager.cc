
#ifndef BUFFER_MGR_C
#define BUFFER_MGR_C

#include "MyDB_BufferManager.h"
#include <string>
#include <Main/BufferMgr/headers/MyDB_BufferManager.h>
#include <zconf.h>
#include <iostream>



using namespace std;

MyDB_PageHandle MyDB_BufferManager :: getPage (MyDB_TablePtr whichTable, long i) {
	Page* curPage;
	string str = whichTable->getName();
	string key = str + "_"+ to_string(i);
	if(this->dictionary.count(key) == 0) {
		curPage = new Page(whichTable, i);
		this->dictionary[key] = curPage;
	}
	curPage = dictionary[key];
	curPage->addHandleNum();
	MyDB_PageHandle ph = make_shared<MyDB_PageHandleBase>(curPage, this);

	return ph;
}

MyDB_PageHandle MyDB_BufferManager :: getPage () {
	Page *curPage = new Page();
	if(anonymousSpace.empty()) {
	    curPage->setTempId(slotId);
		slotId++;
	} else {
		curPage->setTempId(anonymousSpace.back());
		anonymousSpace.pop_back();
	}
	MyDB_PageHandle ph = make_shared<MyDB_PageHandleBase>(curPage, this);
	curPage->addHandleNum();

	return ph;
}

MyDB_PageHandle MyDB_BufferManager :: getPinnedPage (MyDB_TablePtr whichTable, long i) {

	MyDB_PageHandle ph1 = getPage(whichTable, i);
	ph1->getPage()->setPin();

    return ph1;
}

MyDB_PageHandle MyDB_BufferManager :: getPinnedPage () {

	MyDB_PageHandle ph1 = getPage();
	ph1->getPage()->setPin();

	return ph1;
}

void MyDB_BufferManager :: unpin (MyDB_PageHandle unpinMe) {
	unpinMe->getPage()->undoPin();
}

MyDB_BufferManager :: MyDB_BufferManager (size_t pageSize, size_t numPage, string tempFile) {
	this->lru = new LRU(numPage);
	this->pageSize = pageSize;
	this->numPage = numPage;
	this->tempFile = tempFile;
	this->dictionary = unordered_map<string, Page*> ();

	buffer = (char*) malloc(pageSize * numPage);
	// split the space into Page size and put them into a vector to store the available space
	char* addr = buffer;
	for(int i = 0; i < numPage; i++) {
		space.push_back(addr);
		addr += pageSize;
	}

}

MyDB_BufferManager :: ~MyDB_BufferManager () {
	// Evict all the pages from LRU and write them back to disk.
	while(!lru->isEmpty()) {
		Page* outPage = lru->finalEvict()->getPage();

		// Reclaim buffer memory
		space.push_back(outPage->getBufferAddr());

		// Anonymous page
		if(outPage->isIsAnonymous()){
			if (outPage->getHandleNum()==0){
				anonymousSpace.push_back(slotId);
			}
			if (outPage->isDirty()){
				int temp = open(tempFile.c_str(), O_CREAT|O_RDWR|O_SYNC, 0666);
				lseek(temp, pageSize* outPage->getTempId(), SEEK_SET);
				write(temp, outPage->getBufferAddr(), pageSize);
				outPage->setDirty(false);
			}

		};

		// 非匿名文件
		if(!outPage->isIsAnonymous() && outPage->isDirty()){
			int table = open(outPage->getPageId().first->getStorageLoc().c_str(), O_CREAT|O_RDWR|O_SYNC,0666);
			lseek(table, pageSize*outPage->getPageId().second, SEEK_SET);
			write(table, outPage->getBufferAddr(), pageSize);
			outPage->setDirty(false);
		}

		delete outPage->getNode();
		delete outPage;
//		remove(tempFile); // 函数出问题 不知道为什么
	}

	free (buffer);
}

char* MyDB_BufferManager::evict(Page* page) {

	// 从lru中弹出unpin page
	Page* outPage = lru->evict()->getPage();

	// 把dirty的outPage存到disk里面。 已修改 针对匿名和非匿名的page写进不同的file中
	// 匿名文件
	if(outPage->isIsAnonymous()){
		if(outPage->isDirty()){
			int temp = open(tempFile.c_str(),O_CREAT|O_RDWR|O_SYNC,0666);
			lseek(temp, pageSize * outPage->getTempId(), SEEK_SET);
			write(temp, outPage->getBufferAddr(), pageSize);
			close(temp);
		}
	};

	// 非匿名文件
	if(!outPage->isIsAnonymous()){
		if (outPage->isDirty()) {
			int table = open(outPage->getPageId().first->getStorageLoc().c_str(), O_CREAT | O_RDWR | O_SYNC, 0666);
			lseek(table, pageSize * outPage->getPageId().second, SEEK_SET);
			write(table, outPage->getBufferAddr(), pageSize);

			close(table);
		}
	};


	// 创建一个新的node插入lru
	Node* node = new Node(page);
	page->setNode(node);
	page->setBufferAddr(outPage->getBufferAddr());

	lru->insert(node);

	if(page->isIsAnonymous()){
		// 匿名文件读取
		int temp = open(tempFile.c_str(),O_CREAT|O_RDWR|O_SYNC,0666);
		lseek(temp, pageSize * page->getTempId(), SEEK_SET);
		read(temp, page->getBufferAddr(), pageSize);
		close(temp);
	}else{
		// 非匿名文件读取
		int table = open(page->getPageId().first->getStorageLoc().c_str(), O_CREAT|O_RDWR|O_SYNC,0666);
		lseek(table, pageSize*page->getPageId().second, SEEK_SET);
		read(table, page->getBufferAddr(), pageSize);
		close(table);
	};

	// 获取outpage的buffer地址
	char* addr = outPage->getBufferAddr();

	// 将outpage的buffer地址设置为nullptr
	outPage->setBufferAddr(nullptr);

    return addr;
}

void MyDB_BufferManager::update(Page *page) {
	Node* node = page->getNode();
	lru->update(node);
}

void MyDB_BufferManager::insert(Page *page) {
	Node *node = new Node(page);  //构造函数有问题
	page->setNode(node);

	lru->insert(node);

	//从disk写进buffer的操作
	if(page->isIsAnonymous()){
		// 匿名文件读取
		int temp = open(tempFile.c_str(),O_CREAT|O_RDWR|O_SYNC,0666);
		lseek(temp, pageSize * page->getTempId(), SEEK_SET);
		read(temp, page->getBufferAddr(), pageSize);
		close(temp);
	}else{
		// 非匿名文件读取
		int table = open(page->getPageId().first->getStorageLoc().c_str(), O_CREAT|O_RDWR|O_SYNC,0666);
		lseek(table, pageSize*page->getPageId().second, SEEK_SET);
		read(table, page->getBufferAddr(), pageSize);
		close(table);
	};


}

#endif


