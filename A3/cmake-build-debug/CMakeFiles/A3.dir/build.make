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
CMAKE_SOURCE_DIR = /Users/dingzheyu/Desktop/A3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/dingzheyu/Desktop/A3/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/A3.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/A3.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/A3.dir/flags.make

CMakeFiles/A3.dir/Main/BufferMgr/source/MyDB_BufferManager.cc.o: CMakeFiles/A3.dir/flags.make
CMakeFiles/A3.dir/Main/BufferMgr/source/MyDB_BufferManager.cc.o: ../Main/BufferMgr/source/MyDB_BufferManager.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dingzheyu/Desktop/A3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/A3.dir/Main/BufferMgr/source/MyDB_BufferManager.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/A3.dir/Main/BufferMgr/source/MyDB_BufferManager.cc.o -c /Users/dingzheyu/Desktop/A3/Main/BufferMgr/source/MyDB_BufferManager.cc

CMakeFiles/A3.dir/Main/BufferMgr/source/MyDB_BufferManager.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/A3.dir/Main/BufferMgr/source/MyDB_BufferManager.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dingzheyu/Desktop/A3/Main/BufferMgr/source/MyDB_BufferManager.cc > CMakeFiles/A3.dir/Main/BufferMgr/source/MyDB_BufferManager.cc.i

CMakeFiles/A3.dir/Main/BufferMgr/source/MyDB_BufferManager.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/A3.dir/Main/BufferMgr/source/MyDB_BufferManager.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dingzheyu/Desktop/A3/Main/BufferMgr/source/MyDB_BufferManager.cc -o CMakeFiles/A3.dir/Main/BufferMgr/source/MyDB_BufferManager.cc.s

CMakeFiles/A3.dir/Main/BufferMgr/source/MyDB_Page.cc.o: CMakeFiles/A3.dir/flags.make
CMakeFiles/A3.dir/Main/BufferMgr/source/MyDB_Page.cc.o: ../Main/BufferMgr/source/MyDB_Page.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dingzheyu/Desktop/A3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/A3.dir/Main/BufferMgr/source/MyDB_Page.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/A3.dir/Main/BufferMgr/source/MyDB_Page.cc.o -c /Users/dingzheyu/Desktop/A3/Main/BufferMgr/source/MyDB_Page.cc

CMakeFiles/A3.dir/Main/BufferMgr/source/MyDB_Page.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/A3.dir/Main/BufferMgr/source/MyDB_Page.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dingzheyu/Desktop/A3/Main/BufferMgr/source/MyDB_Page.cc > CMakeFiles/A3.dir/Main/BufferMgr/source/MyDB_Page.cc.i

CMakeFiles/A3.dir/Main/BufferMgr/source/MyDB_Page.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/A3.dir/Main/BufferMgr/source/MyDB_Page.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dingzheyu/Desktop/A3/Main/BufferMgr/source/MyDB_Page.cc -o CMakeFiles/A3.dir/Main/BufferMgr/source/MyDB_Page.cc.s

CMakeFiles/A3.dir/Main/Catalog/source/MyDB_Catalog.cc.o: CMakeFiles/A3.dir/flags.make
CMakeFiles/A3.dir/Main/Catalog/source/MyDB_Catalog.cc.o: ../Main/Catalog/source/MyDB_Catalog.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dingzheyu/Desktop/A3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/A3.dir/Main/Catalog/source/MyDB_Catalog.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/A3.dir/Main/Catalog/source/MyDB_Catalog.cc.o -c /Users/dingzheyu/Desktop/A3/Main/Catalog/source/MyDB_Catalog.cc

CMakeFiles/A3.dir/Main/Catalog/source/MyDB_Catalog.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/A3.dir/Main/Catalog/source/MyDB_Catalog.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dingzheyu/Desktop/A3/Main/Catalog/source/MyDB_Catalog.cc > CMakeFiles/A3.dir/Main/Catalog/source/MyDB_Catalog.cc.i

CMakeFiles/A3.dir/Main/Catalog/source/MyDB_Catalog.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/A3.dir/Main/Catalog/source/MyDB_Catalog.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dingzheyu/Desktop/A3/Main/Catalog/source/MyDB_Catalog.cc -o CMakeFiles/A3.dir/Main/Catalog/source/MyDB_Catalog.cc.s

CMakeFiles/A3.dir/Main/Catalog/source/MyDB_Schema.cc.o: CMakeFiles/A3.dir/flags.make
CMakeFiles/A3.dir/Main/Catalog/source/MyDB_Schema.cc.o: ../Main/Catalog/source/MyDB_Schema.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dingzheyu/Desktop/A3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/A3.dir/Main/Catalog/source/MyDB_Schema.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/A3.dir/Main/Catalog/source/MyDB_Schema.cc.o -c /Users/dingzheyu/Desktop/A3/Main/Catalog/source/MyDB_Schema.cc

CMakeFiles/A3.dir/Main/Catalog/source/MyDB_Schema.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/A3.dir/Main/Catalog/source/MyDB_Schema.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dingzheyu/Desktop/A3/Main/Catalog/source/MyDB_Schema.cc > CMakeFiles/A3.dir/Main/Catalog/source/MyDB_Schema.cc.i

CMakeFiles/A3.dir/Main/Catalog/source/MyDB_Schema.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/A3.dir/Main/Catalog/source/MyDB_Schema.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dingzheyu/Desktop/A3/Main/Catalog/source/MyDB_Schema.cc -o CMakeFiles/A3.dir/Main/Catalog/source/MyDB_Schema.cc.s

CMakeFiles/A3.dir/Main/Catalog/source/MyDB_Table.cc.o: CMakeFiles/A3.dir/flags.make
CMakeFiles/A3.dir/Main/Catalog/source/MyDB_Table.cc.o: ../Main/Catalog/source/MyDB_Table.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dingzheyu/Desktop/A3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/A3.dir/Main/Catalog/source/MyDB_Table.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/A3.dir/Main/Catalog/source/MyDB_Table.cc.o -c /Users/dingzheyu/Desktop/A3/Main/Catalog/source/MyDB_Table.cc

CMakeFiles/A3.dir/Main/Catalog/source/MyDB_Table.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/A3.dir/Main/Catalog/source/MyDB_Table.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dingzheyu/Desktop/A3/Main/Catalog/source/MyDB_Table.cc > CMakeFiles/A3.dir/Main/Catalog/source/MyDB_Table.cc.i

CMakeFiles/A3.dir/Main/Catalog/source/MyDB_Table.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/A3.dir/Main/Catalog/source/MyDB_Table.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dingzheyu/Desktop/A3/Main/Catalog/source/MyDB_Table.cc -o CMakeFiles/A3.dir/Main/Catalog/source/MyDB_Table.cc.s

CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageListIteratorAlt.cc.o: CMakeFiles/A3.dir/flags.make
CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageListIteratorAlt.cc.o: ../Main/DatabaseTable/source/MyDB_PageListIteratorAlt.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dingzheyu/Desktop/A3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageListIteratorAlt.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageListIteratorAlt.cc.o -c /Users/dingzheyu/Desktop/A3/Main/DatabaseTable/source/MyDB_PageListIteratorAlt.cc

CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageListIteratorAlt.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageListIteratorAlt.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dingzheyu/Desktop/A3/Main/DatabaseTable/source/MyDB_PageListIteratorAlt.cc > CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageListIteratorAlt.cc.i

CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageListIteratorAlt.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageListIteratorAlt.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dingzheyu/Desktop/A3/Main/DatabaseTable/source/MyDB_PageListIteratorAlt.cc -o CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageListIteratorAlt.cc.s

CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageReaderWriter.cc.o: CMakeFiles/A3.dir/flags.make
CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageReaderWriter.cc.o: ../Main/DatabaseTable/source/MyDB_PageReaderWriter.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dingzheyu/Desktop/A3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageReaderWriter.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageReaderWriter.cc.o -c /Users/dingzheyu/Desktop/A3/Main/DatabaseTable/source/MyDB_PageReaderWriter.cc

CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageReaderWriter.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageReaderWriter.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dingzheyu/Desktop/A3/Main/DatabaseTable/source/MyDB_PageReaderWriter.cc > CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageReaderWriter.cc.i

CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageReaderWriter.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageReaderWriter.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dingzheyu/Desktop/A3/Main/DatabaseTable/source/MyDB_PageReaderWriter.cc -o CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageReaderWriter.cc.s

CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageRecIterator.cc.o: CMakeFiles/A3.dir/flags.make
CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageRecIterator.cc.o: ../Main/DatabaseTable/source/MyDB_PageRecIterator.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dingzheyu/Desktop/A3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageRecIterator.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageRecIterator.cc.o -c /Users/dingzheyu/Desktop/A3/Main/DatabaseTable/source/MyDB_PageRecIterator.cc

CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageRecIterator.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageRecIterator.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dingzheyu/Desktop/A3/Main/DatabaseTable/source/MyDB_PageRecIterator.cc > CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageRecIterator.cc.i

CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageRecIterator.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageRecIterator.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dingzheyu/Desktop/A3/Main/DatabaseTable/source/MyDB_PageRecIterator.cc -o CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageRecIterator.cc.s

CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageRecIteratorAlt.cc.o: CMakeFiles/A3.dir/flags.make
CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageRecIteratorAlt.cc.o: ../Main/DatabaseTable/source/MyDB_PageRecIteratorAlt.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dingzheyu/Desktop/A3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageRecIteratorAlt.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageRecIteratorAlt.cc.o -c /Users/dingzheyu/Desktop/A3/Main/DatabaseTable/source/MyDB_PageRecIteratorAlt.cc

CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageRecIteratorAlt.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageRecIteratorAlt.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dingzheyu/Desktop/A3/Main/DatabaseTable/source/MyDB_PageRecIteratorAlt.cc > CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageRecIteratorAlt.cc.i

CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageRecIteratorAlt.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageRecIteratorAlt.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dingzheyu/Desktop/A3/Main/DatabaseTable/source/MyDB_PageRecIteratorAlt.cc -o CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageRecIteratorAlt.cc.s

CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_TableReaderWriter.cc.o: CMakeFiles/A3.dir/flags.make
CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_TableReaderWriter.cc.o: ../Main/DatabaseTable/source/MyDB_TableReaderWriter.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dingzheyu/Desktop/A3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_TableReaderWriter.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_TableReaderWriter.cc.o -c /Users/dingzheyu/Desktop/A3/Main/DatabaseTable/source/MyDB_TableReaderWriter.cc

CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_TableReaderWriter.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_TableReaderWriter.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dingzheyu/Desktop/A3/Main/DatabaseTable/source/MyDB_TableReaderWriter.cc > CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_TableReaderWriter.cc.i

CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_TableReaderWriter.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_TableReaderWriter.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dingzheyu/Desktop/A3/Main/DatabaseTable/source/MyDB_TableReaderWriter.cc -o CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_TableReaderWriter.cc.s

CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_TableRecIterator.cc.o: CMakeFiles/A3.dir/flags.make
CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_TableRecIterator.cc.o: ../Main/DatabaseTable/source/MyDB_TableRecIterator.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dingzheyu/Desktop/A3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_TableRecIterator.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_TableRecIterator.cc.o -c /Users/dingzheyu/Desktop/A3/Main/DatabaseTable/source/MyDB_TableRecIterator.cc

CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_TableRecIterator.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_TableRecIterator.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dingzheyu/Desktop/A3/Main/DatabaseTable/source/MyDB_TableRecIterator.cc > CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_TableRecIterator.cc.i

CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_TableRecIterator.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_TableRecIterator.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dingzheyu/Desktop/A3/Main/DatabaseTable/source/MyDB_TableRecIterator.cc -o CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_TableRecIterator.cc.s

CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_TableRecIteratorAlt.cc.o: CMakeFiles/A3.dir/flags.make
CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_TableRecIteratorAlt.cc.o: ../Main/DatabaseTable/source/MyDB_TableRecIteratorAlt.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dingzheyu/Desktop/A3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_TableRecIteratorAlt.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_TableRecIteratorAlt.cc.o -c /Users/dingzheyu/Desktop/A3/Main/DatabaseTable/source/MyDB_TableRecIteratorAlt.cc

CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_TableRecIteratorAlt.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_TableRecIteratorAlt.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dingzheyu/Desktop/A3/Main/DatabaseTable/source/MyDB_TableRecIteratorAlt.cc > CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_TableRecIteratorAlt.cc.i

CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_TableRecIteratorAlt.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_TableRecIteratorAlt.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dingzheyu/Desktop/A3/Main/DatabaseTable/source/MyDB_TableRecIteratorAlt.cc -o CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_TableRecIteratorAlt.cc.s

CMakeFiles/A3.dir/Main/DatabaseTable/source/Sorting.cc.o: CMakeFiles/A3.dir/flags.make
CMakeFiles/A3.dir/Main/DatabaseTable/source/Sorting.cc.o: ../Main/DatabaseTable/source/Sorting.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dingzheyu/Desktop/A3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/A3.dir/Main/DatabaseTable/source/Sorting.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/A3.dir/Main/DatabaseTable/source/Sorting.cc.o -c /Users/dingzheyu/Desktop/A3/Main/DatabaseTable/source/Sorting.cc

CMakeFiles/A3.dir/Main/DatabaseTable/source/Sorting.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/A3.dir/Main/DatabaseTable/source/Sorting.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dingzheyu/Desktop/A3/Main/DatabaseTable/source/Sorting.cc > CMakeFiles/A3.dir/Main/DatabaseTable/source/Sorting.cc.i

CMakeFiles/A3.dir/Main/DatabaseTable/source/Sorting.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/A3.dir/Main/DatabaseTable/source/Sorting.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dingzheyu/Desktop/A3/Main/DatabaseTable/source/Sorting.cc -o CMakeFiles/A3.dir/Main/DatabaseTable/source/Sorting.cc.s

CMakeFiles/A3.dir/Main/Record/source/MyDB_AttVal.cc.o: CMakeFiles/A3.dir/flags.make
CMakeFiles/A3.dir/Main/Record/source/MyDB_AttVal.cc.o: ../Main/Record/source/MyDB_AttVal.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dingzheyu/Desktop/A3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/A3.dir/Main/Record/source/MyDB_AttVal.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/A3.dir/Main/Record/source/MyDB_AttVal.cc.o -c /Users/dingzheyu/Desktop/A3/Main/Record/source/MyDB_AttVal.cc

CMakeFiles/A3.dir/Main/Record/source/MyDB_AttVal.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/A3.dir/Main/Record/source/MyDB_AttVal.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dingzheyu/Desktop/A3/Main/Record/source/MyDB_AttVal.cc > CMakeFiles/A3.dir/Main/Record/source/MyDB_AttVal.cc.i

CMakeFiles/A3.dir/Main/Record/source/MyDB_AttVal.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/A3.dir/Main/Record/source/MyDB_AttVal.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dingzheyu/Desktop/A3/Main/Record/source/MyDB_AttVal.cc -o CMakeFiles/A3.dir/Main/Record/source/MyDB_AttVal.cc.s

CMakeFiles/A3.dir/Main/Record/source/MyDB_Record.cc.o: CMakeFiles/A3.dir/flags.make
CMakeFiles/A3.dir/Main/Record/source/MyDB_Record.cc.o: ../Main/Record/source/MyDB_Record.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dingzheyu/Desktop/A3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object CMakeFiles/A3.dir/Main/Record/source/MyDB_Record.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/A3.dir/Main/Record/source/MyDB_Record.cc.o -c /Users/dingzheyu/Desktop/A3/Main/Record/source/MyDB_Record.cc

CMakeFiles/A3.dir/Main/Record/source/MyDB_Record.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/A3.dir/Main/Record/source/MyDB_Record.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dingzheyu/Desktop/A3/Main/Record/source/MyDB_Record.cc > CMakeFiles/A3.dir/Main/Record/source/MyDB_Record.cc.i

CMakeFiles/A3.dir/Main/Record/source/MyDB_Record.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/A3.dir/Main/Record/source/MyDB_Record.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dingzheyu/Desktop/A3/Main/Record/source/MyDB_Record.cc -o CMakeFiles/A3.dir/Main/Record/source/MyDB_Record.cc.s

CMakeFiles/A3.dir/Main/SortTest/source/SortQUnit.cc.o: CMakeFiles/A3.dir/flags.make
CMakeFiles/A3.dir/Main/SortTest/source/SortQUnit.cc.o: ../Main/SortTest/source/SortQUnit.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dingzheyu/Desktop/A3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object CMakeFiles/A3.dir/Main/SortTest/source/SortQUnit.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/A3.dir/Main/SortTest/source/SortQUnit.cc.o -c /Users/dingzheyu/Desktop/A3/Main/SortTest/source/SortQUnit.cc

CMakeFiles/A3.dir/Main/SortTest/source/SortQUnit.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/A3.dir/Main/SortTest/source/SortQUnit.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dingzheyu/Desktop/A3/Main/SortTest/source/SortQUnit.cc > CMakeFiles/A3.dir/Main/SortTest/source/SortQUnit.cc.i

CMakeFiles/A3.dir/Main/SortTest/source/SortQUnit.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/A3.dir/Main/SortTest/source/SortQUnit.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dingzheyu/Desktop/A3/Main/SortTest/source/SortQUnit.cc -o CMakeFiles/A3.dir/Main/SortTest/source/SortQUnit.cc.s

# Object files for target A3
A3_OBJECTS = \
"CMakeFiles/A3.dir/Main/BufferMgr/source/MyDB_BufferManager.cc.o" \
"CMakeFiles/A3.dir/Main/BufferMgr/source/MyDB_Page.cc.o" \
"CMakeFiles/A3.dir/Main/Catalog/source/MyDB_Catalog.cc.o" \
"CMakeFiles/A3.dir/Main/Catalog/source/MyDB_Schema.cc.o" \
"CMakeFiles/A3.dir/Main/Catalog/source/MyDB_Table.cc.o" \
"CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageListIteratorAlt.cc.o" \
"CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageReaderWriter.cc.o" \
"CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageRecIterator.cc.o" \
"CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageRecIteratorAlt.cc.o" \
"CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_TableReaderWriter.cc.o" \
"CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_TableRecIterator.cc.o" \
"CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_TableRecIteratorAlt.cc.o" \
"CMakeFiles/A3.dir/Main/DatabaseTable/source/Sorting.cc.o" \
"CMakeFiles/A3.dir/Main/Record/source/MyDB_AttVal.cc.o" \
"CMakeFiles/A3.dir/Main/Record/source/MyDB_Record.cc.o" \
"CMakeFiles/A3.dir/Main/SortTest/source/SortQUnit.cc.o"

# External object files for target A3
A3_EXTERNAL_OBJECTS =

A3: CMakeFiles/A3.dir/Main/BufferMgr/source/MyDB_BufferManager.cc.o
A3: CMakeFiles/A3.dir/Main/BufferMgr/source/MyDB_Page.cc.o
A3: CMakeFiles/A3.dir/Main/Catalog/source/MyDB_Catalog.cc.o
A3: CMakeFiles/A3.dir/Main/Catalog/source/MyDB_Schema.cc.o
A3: CMakeFiles/A3.dir/Main/Catalog/source/MyDB_Table.cc.o
A3: CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageListIteratorAlt.cc.o
A3: CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageReaderWriter.cc.o
A3: CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageRecIterator.cc.o
A3: CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_PageRecIteratorAlt.cc.o
A3: CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_TableReaderWriter.cc.o
A3: CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_TableRecIterator.cc.o
A3: CMakeFiles/A3.dir/Main/DatabaseTable/source/MyDB_TableRecIteratorAlt.cc.o
A3: CMakeFiles/A3.dir/Main/DatabaseTable/source/Sorting.cc.o
A3: CMakeFiles/A3.dir/Main/Record/source/MyDB_AttVal.cc.o
A3: CMakeFiles/A3.dir/Main/Record/source/MyDB_Record.cc.o
A3: CMakeFiles/A3.dir/Main/SortTest/source/SortQUnit.cc.o
A3: CMakeFiles/A3.dir/build.make
A3: CMakeFiles/A3.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/dingzheyu/Desktop/A3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Linking CXX executable A3"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/A3.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/A3.dir/build: A3

.PHONY : CMakeFiles/A3.dir/build

CMakeFiles/A3.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/A3.dir/cmake_clean.cmake
.PHONY : CMakeFiles/A3.dir/clean

CMakeFiles/A3.dir/depend:
	cd /Users/dingzheyu/Desktop/A3/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/dingzheyu/Desktop/A3 /Users/dingzheyu/Desktop/A3 /Users/dingzheyu/Desktop/A3/cmake-build-debug /Users/dingzheyu/Desktop/A3/cmake-build-debug /Users/dingzheyu/Desktop/A3/cmake-build-debug/CMakeFiles/A3.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/A3.dir/depend

