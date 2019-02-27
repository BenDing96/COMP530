
#ifndef SORT_C
#define SORT_C

#include "MyDB_PageListIteratorAlt.h"
#include "MyDB_PageReaderWriter.h"
#include "MyDB_TableRecIterator.h"
#include "MyDB_TableRecIteratorAlt.h"
#include "MyDB_TableReaderWriter.h"
#include "Sorting.h"

using namespace std;

void mergeIntoFile (MyDB_TableReaderWriter & sortIntoMe,
		vector <MyDB_RecordIteratorAltPtr> & mergeUs,
		function <bool ()> comparator,
		MyDB_RecordPtr lhs,
		MyDB_RecordPtr rhs) {
	auto cmp = [&lhs, &rhs, &comparator] (const MyDB_RecordIteratorAltPtr& left, const MyDB_RecordIteratorAltPtr& right)  {
		left->getCurrent(lhs);
		right->getCurrent(rhs);
		return !comparator(); //'>' from small to big, '<' from big to small
	};

	//declare the min heap
	priority_queue<MyDB_RecordIteratorAltPtr, vector<MyDB_RecordIteratorAltPtr>, decltype(cmp)> minPq(cmp);

	//push the first record of each page into the minPq
	for(MyDB_RecordIteratorAltPtr iterPtr: mergeUs){
		if(iterPtr->advance()){
			minPq.push(iterPtr);
		}
	}

	//create a record to store the next smaller record
	MyDB_RecordPtr cursorRecord = make_shared<MyDB_Record>(sortIntoMe.getTable()->getSchema());

	//update the minPq by taking the smallest record out of the minPq and insert the next bigger one
	while(!minPq.empty()){
		MyDB_RecordIteratorAltPtr listIterPtr = minPq.top();
		minPq.pop();
		listIterPtr->getCurrent(cursorRecord);
		sortIntoMe.append(cursorRecord);
		if(listIterPtr->advance()){
			minPq.push(listIterPtr);
		}
	}
}

vector <MyDB_PageReaderWriter> mergeIntoList (
		MyDB_BufferManagerPtr bufMgr,
		MyDB_RecordIteratorAltPtr leftIter,
		MyDB_RecordIteratorAltPtr rightIter,
		function <bool ()> cmp,
		MyDB_RecordPtr lhs,
		MyDB_RecordPtr rhs) {
	vector<MyDB_PageReaderWriter> pageRwInRun;
	MyDB_PageReaderWriter curMergePage(*(bufMgr.get()));

	bool flag1 = leftIter->advance();
	bool flag2 = rightIter->advance();

	MyDB_RecordPtr nextRec = nullptr;

	while(true){
		if(!flag1 && !flag2){//all finished
			pageRwInRun.push_back(curMergePage);
			break;
		}

		if(!flag1){ //the first ends, iterate the second
			rightIter->getCurrent(rhs);
			nextRec = rhs;
			flag2 = rightIter->advance();
		}else if(!flag2){ //the second ends, iterate the first
			leftIter->getCurrent(lhs);
			nextRec = lhs;
			flag1 = leftIter->advance();
		}else{ //the first and second pages are not end
			leftIter->getCurrent(lhs);
			rightIter->getCurrent(rhs);
			if(cmp()){ //lhs < rhs
				nextRec = lhs; //choose the first one
				flag1 = leftIter->advance(); //then advance the position
			}else{ //lhs >= rhs
				nextRec = rhs; //choose the second one
				flag2 = rightIter->advance(); //then advance the position
			}
		}

		if(!curMergePage.append(nextRec)){ //if the current merge page is full
			pageRwInRun.push_back(curMergePage); //append the current page to the current run
			curMergePage = MyDB_PageReaderWriter(*(bufMgr.get())); //create a new pageReaderWriter
			curMergePage.append(nextRec); //append content of current record
		}
	}
	return pageRwInRun;
}
	
void sort (int runSize,
		MyDB_TableReaderWriter & fromTable,
		MyDB_TableReaderWriter & toTable,
		function <bool ()> cmp,
		MyDB_RecordPtr lhs, MyDB_RecordPtr rhs) {
	int numPages = fromTable.getNumPages(); // total pages within a table
	int accSize = 0;//record the current number of pages within one run

	queue<vector<MyDB_PageReaderWriter>> queue;

	vector<vector<MyDB_PageReaderWriter>> runList;

	for(int i = 0 ; i < numPages ; i++){
		MyDB_PageReaderWriterPtr pageRWPtr = fromTable[i].sort(cmp, lhs, rhs);
		vector<MyDB_PageReaderWriter> tmpRun; //dynamic vector recording the state of merging into list, sorting phase
		tmpRun.push_back(*(pageRWPtr.get()));
		queue.push(tmpRun);
		accSize++;

		if(accSize == runSize || i == numPages - 1){//the last run may not reach the size of numPages
			while(queue.size() > 1){// when the size is one, it means the run has been sorted
				MyDB_RecordIteratorAltPtr leftIterPtr = make_shared<MyDB_PageListIteratorAlt>(queue.front());
				queue.pop();
				MyDB_RecordIteratorAltPtr rightIterPtr = make_shared<MyDB_PageListIteratorAlt>(queue.front());
				queue.pop();
				queue.push(mergeIntoList(fromTable.getBufferMgr(), leftIterPtr, rightIterPtr, cmp, lhs, rhs));
			}
			//we got a run at this moment and push it into the runList
			runList.push_back(queue.front());
			//remove the merged run from the queue
			queue.pop();
		}
		//update the accumulated size
		accSize = 0;
	}

	//create PageListIterator for each run (a run can holds multiple pages)
	vector<MyDB_RecordIteratorAltPtr> mergeUs;
	for(vector<MyDB_PageReaderWriter> run : runList){
		MyDB_RecordIteratorAltPtr tmpIter = make_shared<MyDB_PageListIteratorAlt>(run);
		mergeUs.push_back(tmpIter);
	}
	//merge all runs into one sorted file
	mergeIntoFile(toTable, mergeUs, cmp, lhs, rhs);
}

#endif