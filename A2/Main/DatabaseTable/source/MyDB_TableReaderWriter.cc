
#ifndef TABLE_RW_C
#define TABLE_RW_C

#include <fstream>
#include "MyDB_PageReaderWriter.h"

using namespace std;

MyDB_TableReaderWriter :: MyDB_TableReaderWriter (MyDB_TablePtr myTable, MyDB_BufferManagerPtr myBuffer) {
	this->table = myTable;
	this->buffer = myBuffer;
	// lastPage置0
	if (myTable->lastPage() == -1) {
		myTable->setLastPage(0);
		MyDB_PageReaderWriterPtr pageRW = make_shared <MyDB_PageReaderWriter> (myBuffer, myTable, myTable->lastPage());
		pageRW->clear();
	}
}

MyDB_PageReaderWriter MyDB_TableReaderWriter :: operator [] (size_t i) {
	MyDB_PageReaderWriterPtr temp;
	while (i > this->table->lastPage()) {
		// 如果没有第i个page就创建新的空page
		this->table->setLastPage(this->table->lastPage() + 1);
		temp = make_shared<MyDB_PageReaderWriter> (this->buffer, this->table, this->table->lastPage());
		temp->clear();
	}
	temp = make_shared<MyDB_PageReaderWriter> (this->buffer, this->table, i);
	return *temp;
}

MyDB_RecordPtr MyDB_TableReaderWriter :: getEmptyRecord () {
	MyDB_RecordPtr emptyRecord = make_shared <MyDB_Record> (this->table->getSchema());
	return emptyRecord;
}

MyDB_PageReaderWriter MyDB_TableReaderWriter :: last () {
	return (*this)[this->table->lastPage()];
}

void MyDB_TableReaderWriter :: append (MyDB_RecordPtr appendMe) {
	MyDB_PageReaderWriterPtr pageRW1 = make_shared <MyDB_PageReaderWriter> (this->buffer, this->table, this->table->lastPage());
	bool isEnough = pageRW1->append(appendMe);
	if (!isEnough) {
		this->table->setLastPage(this->table->lastPage() + 1);
		pageRW1 = make_shared <MyDB_PageReaderWriter> (this->buffer, this->table, this->table->lastPage());
		pageRW1->clear();
		pageRW1->append(appendMe);
	}
}

void MyDB_TableReaderWriter :: loadFromTextFile (string fromMe) {
    this->table->setLastPage(0);

	MyDB_RecordPtr tmpRecord = getEmptyRecord();
	string oneRecord;
	ifstream fileIn;
	fileIn.open(fromMe);
	while(getline(fileIn, oneRecord)) {
		tmpRecord->fromString(oneRecord) ;
		append(tmpRecord);
	}
	fileIn.close();
}

MyDB_RecordIteratorPtr MyDB_TableReaderWriter :: getIterator (MyDB_RecordPtr myRecord) {
	MyDB_RecordIteratorPtr tableRecIterator = make_shared <MyDB_TableRecIterator> (this, this->table, myRecord);
	return tableRecIterator;
}

void MyDB_TableReaderWriter :: writeIntoTextFile (string fileName) {
	ofstream fileOut;
	fileOut.open (fileName);
	MyDB_RecordPtr record = getEmptyRecord ();
	MyDB_RecordIteratorPtr recordIter = getIterator (record);
	while (recordIter->hasNext()) {
		recordIter->getNext ();
	}
	fileOut.close ();
}

#endif

