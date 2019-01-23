cmake_minimum_required(VERSION 3.13)
project(A1)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)
include_directories(A1)
include_directories(A1/Build)
include_directories(A1/Main)
include_directories(A1/Main/BufferMgr)
include_directories(A1/Main/BufferMgr/headers)
include_directories(A1/Main/BufferMgr/source)
include_directories(A1/Main/BufferTest)
include_directories(A1/Main/BufferTest/source)
include_directories(A1/Main/Catalog)
include_directories(A1/Main/Catalog/headers)
include_directories(A1/Main/Catalog/source)
include_directories(A1/Main/Qunit)
include_directories(A1/Main/Qunit/headers)

add_executable(A1
        A1/Build/SConstruct
        A1/Main/BufferMgr/headers/MyDB_BufferManager.h
        A1/Main/BufferMgr/headers/MyDB_LRU.h
        A1/Main/BufferMgr/headers/MyDB_Page.h
        A1/Main/BufferMgr/headers/MyDB_PageHandle.h
        A1/Main/BufferMgr/source/MyDB_BufferManager.cc
        A1/Main/BufferMgr/source/MyDB_Page.cpp
        A1/Main/BufferMgr/source/MyDB_PageHandle.cc
        A1/Main/BufferTest/source/BufferQUnit.cc
        A1/Main/Catalog/headers/MyDB_Table.h
        A1/Main/Catalog/source/MyDB_Table.cc
        A1/Main/Qunit/headers/QUnit.h
        A1.pdf)
