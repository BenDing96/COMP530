
#ifndef TABLE_RW_C
#define TABLE_RW_C

#include <fstream>
#include "MyDB_PageReaderWriter.h"

using namespace std;

MyDB_TableReaderWriter :: MyDB_TableReaderWriter (MyDB_TablePtr forMe, MyDB_BufferManagerPtr myBuffer) {
	this->forMe = forMe;
	this->myBuffer = myBuffer;
	// lastPage置0
	if (forMe->lastPage() == -1) {
		forMe->setLastPage(0);
		MyDB_PageReaderWriterPtr pageRW = make_shared <MyDB_PageReaderWriter> (forMe, myBuffer, forMe->lastPage());
		pageRW->clear();
	}
}

MyDB_PageReaderWriter MyDB_TableReaderWriter :: operator [] (size_t) {
	static MyDB_PageReaderWriterPtr temp;
	return *temp;
}

MyDB_RecordPtr MyDB_TableReaderWriter :: getEmptyRecord () {
	MyDB_RecordPtr emptyRecord = make_shared <MyDB_Record> (this->forMe->getSchema());
	return emptyRecord;
}

MyDB_PageReaderWriter MyDB_TableReaderWriter :: last () {
	return (*this)[0];
}


void MyDB_TableReaderWriter :: append (MyDB_RecordPtr appendMe) {
	MyDB_PageReaderWriterPtr pageRW1 = make_shared <MyDB_PageReaderWriter> (this->myBuffer, this->forMe, this->forMe->lastPage());
	bool isEnough = pageRW1->append(appendMe);
	if (!isEnough) {
		this->forMe->setLastPage(this->forMe->lastPage() + 1);
		MyDB_PageReaderWriterPtr pageRW2 = make_shared <MyDB_PageReaderWriter> (this->myBuffer, this->forMe, this->forMe->lastPage());
		pageRW2->clear();
		pageRW2->append(appendMe);
	}
}

void MyDB_TableReaderWriter :: loadFromTextFile (string fromMe) {
	MyDB_RecordPtr tmpRecord = getEmptyRecord();
	string oneRecord;
	ifstream file;
	file.open(fromMe);
	if (!file.eof()) {
		getline(file, oneRecord);
		tmpRecord->fromString(oneRecord);
		this->append(tmpRecord);
	}
	file.close();
}

MyDB_RecordIteratorPtr MyDB_TableReaderWriter :: getIterator (MyDB_RecordPtr) {
	return nullptr;
}

void MyDB_TableReaderWriter :: writeIntoTextFile (string) {
}

#endif

