cmake_minimum_required(VERSION 3.13)
project(A1)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)
include_directories(Main)
include_directories(Main/BufferMgr)
include_directories(Main/BufferMgr/headers)
include_directories(Main/BufferMgr/source)
include_directories(Main/BufferTest)
include_directories(Main/BufferTest/source)
include_directories(Main/Catalog)
include_directories(Main/Catalog/headers)
include_directories(Main/Catalog/source)
include_directories(Main/Qunit)
include_directories(Main/Qunit/headers)

add_executable(A1
        Main/BufferMgr/headers/LRU.h
        Main/BufferMgr/headers/MyDB_BufferManager.h
        Main/BufferMgr/headers/MyDB_Page.h
        Main/BufferMgr/headers/MyDB_PageHandle.h
        Main/BufferMgr/headers/Node.h
        Main/BufferMgr/source/LRU.cc
        Main/BufferMgr/source/MyDB_BufferManager.cc
        Main/BufferMgr/source/MyDB_Page.cc
        Main/BufferMgr/source/MyDB_PageHandle.cc
        Main/BufferMgr/source/Node.cc
        Main/BufferTest/source/BufferQUnit.cc
        Main/Catalog/headers/MyDB_Table.h
        Main/Catalog/source/MyDB_Table.cc
        Main/Qunit/headers/QUnit.h)
