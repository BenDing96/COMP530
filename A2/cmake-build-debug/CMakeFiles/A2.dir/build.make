# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/A2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/A2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/A2.dir/flags.make

CMakeFiles/A2.dir/Main/BufferMgr/headers/it.cc.o: CMakeFiles/A2.dir/flags.make
CMakeFiles/A2.dir/Main/BufferMgr/headers/it.cc.o: ../Main/BufferMgr/headers/it.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/A2.dir/Main/BufferMgr/headers/it.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/A2.dir/Main/BufferMgr/headers/it.cc.o -c /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/Main/BufferMgr/headers/it.cc

CMakeFiles/A2.dir/Main/BufferMgr/headers/it.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/A2.dir/Main/BufferMgr/headers/it.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/Main/BufferMgr/headers/it.cc > CMakeFiles/A2.dir/Main/BufferMgr/headers/it.cc.i

CMakeFiles/A2.dir/Main/BufferMgr/headers/it.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/A2.dir/Main/BufferMgr/headers/it.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/Main/BufferMgr/headers/it.cc -o CMakeFiles/A2.dir/Main/BufferMgr/headers/it.cc.s

CMakeFiles/A2.dir/Main/BufferMgr/source/MyDB_BufferManager.cc.o: CMakeFiles/A2.dir/flags.make
CMakeFiles/A2.dir/Main/BufferMgr/source/MyDB_BufferManager.cc.o: ../Main/BufferMgr/source/MyDB_BufferManager.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/A2.dir/Main/BufferMgr/source/MyDB_BufferManager.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/A2.dir/Main/BufferMgr/source/MyDB_BufferManager.cc.o -c /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/Main/BufferMgr/source/MyDB_BufferManager.cc

CMakeFiles/A2.dir/Main/BufferMgr/source/MyDB_BufferManager.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/A2.dir/Main/BufferMgr/source/MyDB_BufferManager.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/Main/BufferMgr/source/MyDB_BufferManager.cc > CMakeFiles/A2.dir/Main/BufferMgr/source/MyDB_BufferManager.cc.i

CMakeFiles/A2.dir/Main/BufferMgr/source/MyDB_BufferManager.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/A2.dir/Main/BufferMgr/source/MyDB_BufferManager.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/Main/BufferMgr/source/MyDB_BufferManager.cc -o CMakeFiles/A2.dir/Main/BufferMgr/source/MyDB_BufferManager.cc.s

CMakeFiles/A2.dir/Main/BufferMgr/source/MyDB_Page.cc.o: CMakeFiles/A2.dir/flags.make
CMakeFiles/A2.dir/Main/BufferMgr/source/MyDB_Page.cc.o: ../Main/BufferMgr/source/MyDB_Page.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/A2.dir/Main/BufferMgr/source/MyDB_Page.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/A2.dir/Main/BufferMgr/source/MyDB_Page.cc.o -c /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/Main/BufferMgr/source/MyDB_Page.cc

CMakeFiles/A2.dir/Main/BufferMgr/source/MyDB_Page.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/A2.dir/Main/BufferMgr/source/MyDB_Page.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/Main/BufferMgr/source/MyDB_Page.cc > CMakeFiles/A2.dir/Main/BufferMgr/source/MyDB_Page.cc.i

CMakeFiles/A2.dir/Main/BufferMgr/source/MyDB_Page.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/A2.dir/Main/BufferMgr/source/MyDB_Page.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/Main/BufferMgr/source/MyDB_Page.cc -o CMakeFiles/A2.dir/Main/BufferMgr/source/MyDB_Page.cc.s

CMakeFiles/A2.dir/Main/BufferTest/source/BufferQUnit.cc.o: CMakeFiles/A2.dir/flags.make
CMakeFiles/A2.dir/Main/BufferTest/source/BufferQUnit.cc.o: ../Main/BufferTest/source/BufferQUnit.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/A2.dir/Main/BufferTest/source/BufferQUnit.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/A2.dir/Main/BufferTest/source/BufferQUnit.cc.o -c /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/Main/BufferTest/source/BufferQUnit.cc

CMakeFiles/A2.dir/Main/BufferTest/source/BufferQUnit.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/A2.dir/Main/BufferTest/source/BufferQUnit.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/Main/BufferTest/source/BufferQUnit.cc > CMakeFiles/A2.dir/Main/BufferTest/source/BufferQUnit.cc.i

CMakeFiles/A2.dir/Main/BufferTest/source/BufferQUnit.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/A2.dir/Main/BufferTest/source/BufferQUnit.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/Main/BufferTest/source/BufferQUnit.cc -o CMakeFiles/A2.dir/Main/BufferTest/source/BufferQUnit.cc.s

CMakeFiles/A2.dir/Main/Catalog/source/MyDB_Catalog.cc.o: CMakeFiles/A2.dir/flags.make
CMakeFiles/A2.dir/Main/Catalog/source/MyDB_Catalog.cc.o: ../Main/Catalog/source/MyDB_Catalog.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/A2.dir/Main/Catalog/source/MyDB_Catalog.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/A2.dir/Main/Catalog/source/MyDB_Catalog.cc.o -c /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/Main/Catalog/source/MyDB_Catalog.cc

CMakeFiles/A2.dir/Main/Catalog/source/MyDB_Catalog.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/A2.dir/Main/Catalog/source/MyDB_Catalog.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/Main/Catalog/source/MyDB_Catalog.cc > CMakeFiles/A2.dir/Main/Catalog/source/MyDB_Catalog.cc.i

CMakeFiles/A2.dir/Main/Catalog/source/MyDB_Catalog.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/A2.dir/Main/Catalog/source/MyDB_Catalog.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/Main/Catalog/source/MyDB_Catalog.cc -o CMakeFiles/A2.dir/Main/Catalog/source/MyDB_Catalog.cc.s

CMakeFiles/A2.dir/Main/Catalog/source/MyDB_Schema.cc.o: CMakeFiles/A2.dir/flags.make
CMakeFiles/A2.dir/Main/Catalog/source/MyDB_Schema.cc.o: ../Main/Catalog/source/MyDB_Schema.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/A2.dir/Main/Catalog/source/MyDB_Schema.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/A2.dir/Main/Catalog/source/MyDB_Schema.cc.o -c /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/Main/Catalog/source/MyDB_Schema.cc

CMakeFiles/A2.dir/Main/Catalog/source/MyDB_Schema.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/A2.dir/Main/Catalog/source/MyDB_Schema.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/Main/Catalog/source/MyDB_Schema.cc > CMakeFiles/A2.dir/Main/Catalog/source/MyDB_Schema.cc.i

CMakeFiles/A2.dir/Main/Catalog/source/MyDB_Schema.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/A2.dir/Main/Catalog/source/MyDB_Schema.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/Main/Catalog/source/MyDB_Schema.cc -o CMakeFiles/A2.dir/Main/Catalog/source/MyDB_Schema.cc.s

CMakeFiles/A2.dir/Main/Catalog/source/MyDB_Table.cc.o: CMakeFiles/A2.dir/flags.make
CMakeFiles/A2.dir/Main/Catalog/source/MyDB_Table.cc.o: ../Main/Catalog/source/MyDB_Table.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/A2.dir/Main/Catalog/source/MyDB_Table.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/A2.dir/Main/Catalog/source/MyDB_Table.cc.o -c /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/Main/Catalog/source/MyDB_Table.cc

CMakeFiles/A2.dir/Main/Catalog/source/MyDB_Table.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/A2.dir/Main/Catalog/source/MyDB_Table.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/Main/Catalog/source/MyDB_Table.cc > CMakeFiles/A2.dir/Main/Catalog/source/MyDB_Table.cc.i

CMakeFiles/A2.dir/Main/Catalog/source/MyDB_Table.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/A2.dir/Main/Catalog/source/MyDB_Table.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/Main/Catalog/source/MyDB_Table.cc -o CMakeFiles/A2.dir/Main/Catalog/source/MyDB_Table.cc.s

CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_PageReaderWriter.cc.o: CMakeFiles/A2.dir/flags.make
CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_PageReaderWriter.cc.o: ../Main/DatabaseTable/source/MyDB_PageReaderWriter.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_PageReaderWriter.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_PageReaderWriter.cc.o -c /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/Main/DatabaseTable/source/MyDB_PageReaderWriter.cc

CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_PageReaderWriter.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_PageReaderWriter.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/Main/DatabaseTable/source/MyDB_PageReaderWriter.cc > CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_PageReaderWriter.cc.i

CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_PageReaderWriter.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_PageReaderWriter.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/Main/DatabaseTable/source/MyDB_PageReaderWriter.cc -o CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_PageReaderWriter.cc.s

CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_PageRecIterator.cc.o: CMakeFiles/A2.dir/flags.make
CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_PageRecIterator.cc.o: ../Main/DatabaseTable/source/MyDB_PageRecIterator.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_PageRecIterator.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_PageRecIterator.cc.o -c /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/Main/DatabaseTable/source/MyDB_PageRecIterator.cc

CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_PageRecIterator.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_PageRecIterator.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/Main/DatabaseTable/source/MyDB_PageRecIterator.cc > CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_PageRecIterator.cc.i

CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_PageRecIterator.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_PageRecIterator.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/Main/DatabaseTable/source/MyDB_PageRecIterator.cc -o CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_PageRecIterator.cc.s

CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_TableReaderWriter.cc.o: CMakeFiles/A2.dir/flags.make
CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_TableReaderWriter.cc.o: ../Main/DatabaseTable/source/MyDB_TableReaderWriter.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_TableReaderWriter.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_TableReaderWriter.cc.o -c /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/Main/DatabaseTable/source/MyDB_TableReaderWriter.cc

CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_TableReaderWriter.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_TableReaderWriter.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/Main/DatabaseTable/source/MyDB_TableReaderWriter.cc > CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_TableReaderWriter.cc.i

CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_TableReaderWriter.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_TableReaderWriter.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/Main/DatabaseTable/source/MyDB_TableReaderWriter.cc -o CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_TableReaderWriter.cc.s

CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_TableRecIterator.cc.o: CMakeFiles/A2.dir/flags.make
CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_TableRecIterator.cc.o: ../Main/DatabaseTable/source/MyDB_TableRecIterator.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_TableRecIterator.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_TableRecIterator.cc.o -c /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/Main/DatabaseTable/source/MyDB_TableRecIterator.cc

CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_TableRecIterator.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_TableRecIterator.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/Main/DatabaseTable/source/MyDB_TableRecIterator.cc > CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_TableRecIterator.cc.i

CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_TableRecIterator.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_TableRecIterator.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/Main/DatabaseTable/source/MyDB_TableRecIterator.cc -o CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_TableRecIterator.cc.s

CMakeFiles/A2.dir/Main/Record/source/MyDB_AttVal.cc.o: CMakeFiles/A2.dir/flags.make
CMakeFiles/A2.dir/Main/Record/source/MyDB_AttVal.cc.o: ../Main/Record/source/MyDB_AttVal.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/A2.dir/Main/Record/source/MyDB_AttVal.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/A2.dir/Main/Record/source/MyDB_AttVal.cc.o -c /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/Main/Record/source/MyDB_AttVal.cc

CMakeFiles/A2.dir/Main/Record/source/MyDB_AttVal.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/A2.dir/Main/Record/source/MyDB_AttVal.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/Main/Record/source/MyDB_AttVal.cc > CMakeFiles/A2.dir/Main/Record/source/MyDB_AttVal.cc.i

CMakeFiles/A2.dir/Main/Record/source/MyDB_AttVal.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/A2.dir/Main/Record/source/MyDB_AttVal.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/Main/Record/source/MyDB_AttVal.cc -o CMakeFiles/A2.dir/Main/Record/source/MyDB_AttVal.cc.s

CMakeFiles/A2.dir/Main/Record/source/MyDB_Record.cc.o: CMakeFiles/A2.dir/flags.make
CMakeFiles/A2.dir/Main/Record/source/MyDB_Record.cc.o: ../Main/Record/source/MyDB_Record.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/A2.dir/Main/Record/source/MyDB_Record.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/A2.dir/Main/Record/source/MyDB_Record.cc.o -c /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/Main/Record/source/MyDB_Record.cc

CMakeFiles/A2.dir/Main/Record/source/MyDB_Record.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/A2.dir/Main/Record/source/MyDB_Record.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/Main/Record/source/MyDB_Record.cc > CMakeFiles/A2.dir/Main/Record/source/MyDB_Record.cc.i

CMakeFiles/A2.dir/Main/Record/source/MyDB_Record.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/A2.dir/Main/Record/source/MyDB_Record.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/Main/Record/source/MyDB_Record.cc -o CMakeFiles/A2.dir/Main/Record/source/MyDB_Record.cc.s

CMakeFiles/A2.dir/Main/RecordTest/source/RecordQUnit.cc.o: CMakeFiles/A2.dir/flags.make
CMakeFiles/A2.dir/Main/RecordTest/source/RecordQUnit.cc.o: ../Main/RecordTest/source/RecordQUnit.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/A2.dir/Main/RecordTest/source/RecordQUnit.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/A2.dir/Main/RecordTest/source/RecordQUnit.cc.o -c /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/Main/RecordTest/source/RecordQUnit.cc

CMakeFiles/A2.dir/Main/RecordTest/source/RecordQUnit.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/A2.dir/Main/RecordTest/source/RecordQUnit.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/Main/RecordTest/source/RecordQUnit.cc > CMakeFiles/A2.dir/Main/RecordTest/source/RecordQUnit.cc.i

CMakeFiles/A2.dir/Main/RecordTest/source/RecordQUnit.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/A2.dir/Main/RecordTest/source/RecordQUnit.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/Main/RecordTest/source/RecordQUnit.cc -o CMakeFiles/A2.dir/Main/RecordTest/source/RecordQUnit.cc.s

# Object files for target A2
A2_OBJECTS = \
"CMakeFiles/A2.dir/Main/BufferMgr/headers/it.cc.o" \
"CMakeFiles/A2.dir/Main/BufferMgr/source/MyDB_BufferManager.cc.o" \
"CMakeFiles/A2.dir/Main/BufferMgr/source/MyDB_Page.cc.o" \
"CMakeFiles/A2.dir/Main/BufferTest/source/BufferQUnit.cc.o" \
"CMakeFiles/A2.dir/Main/Catalog/source/MyDB_Catalog.cc.o" \
"CMakeFiles/A2.dir/Main/Catalog/source/MyDB_Schema.cc.o" \
"CMakeFiles/A2.dir/Main/Catalog/source/MyDB_Table.cc.o" \
"CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_PageReaderWriter.cc.o" \
"CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_PageRecIterator.cc.o" \
"CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_TableReaderWriter.cc.o" \
"CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_TableRecIterator.cc.o" \
"CMakeFiles/A2.dir/Main/Record/source/MyDB_AttVal.cc.o" \
"CMakeFiles/A2.dir/Main/Record/source/MyDB_Record.cc.o" \
"CMakeFiles/A2.dir/Main/RecordTest/source/RecordQUnit.cc.o"

# External object files for target A2
A2_EXTERNAL_OBJECTS =

A2: CMakeFiles/A2.dir/Main/BufferMgr/headers/it.cc.o
A2: CMakeFiles/A2.dir/Main/BufferMgr/source/MyDB_BufferManager.cc.o
A2: CMakeFiles/A2.dir/Main/BufferMgr/source/MyDB_Page.cc.o
A2: CMakeFiles/A2.dir/Main/BufferTest/source/BufferQUnit.cc.o
A2: CMakeFiles/A2.dir/Main/Catalog/source/MyDB_Catalog.cc.o
A2: CMakeFiles/A2.dir/Main/Catalog/source/MyDB_Schema.cc.o
A2: CMakeFiles/A2.dir/Main/Catalog/source/MyDB_Table.cc.o
A2: CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_PageReaderWriter.cc.o
A2: CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_PageRecIterator.cc.o
A2: CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_TableReaderWriter.cc.o
A2: CMakeFiles/A2.dir/Main/DatabaseTable/source/MyDB_TableRecIterator.cc.o
A2: CMakeFiles/A2.dir/Main/Record/source/MyDB_AttVal.cc.o
A2: CMakeFiles/A2.dir/Main/Record/source/MyDB_Record.cc.o
A2: CMakeFiles/A2.dir/Main/RecordTest/source/RecordQUnit.cc.o
A2: CMakeFiles/A2.dir/build.make
A2: CMakeFiles/A2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Linking CXX executable A2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/A2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/A2.dir/build: A2

.PHONY : CMakeFiles/A2.dir/build

CMakeFiles/A2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/A2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/A2.dir/clean

CMakeFiles/A2.dir/depend:
	cd /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2 /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2 /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/cmake-build-debug /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/cmake-build-debug /Users/dingzheyu/Desktop/DatabaseImplementation/Homework/COMP530/A2/cmake-build-debug/CMakeFiles/A2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/A2.dir/depend

