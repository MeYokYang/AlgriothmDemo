# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.11

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
CMAKE_COMMAND = /usr/local/cmake/bin/cmake

# The command to remove a file.
RM = /usr/local/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/meyok/project/AlgorithmDemo/cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/meyok/project/AlgorithmDemo/cpp

# Include any dependencies generated for this target.
include MString/CMakeFiles/mstring.dir/depend.make

# Include the progress variables for this target.
include MString/CMakeFiles/mstring.dir/progress.make

# Include the compile flags for this target's objects.
include MString/CMakeFiles/mstring.dir/flags.make

MString/CMakeFiles/mstring.dir/Match/string_match.cpp.o: MString/CMakeFiles/mstring.dir/flags.make
MString/CMakeFiles/mstring.dir/Match/string_match.cpp.o: MString/Match/string_match.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/meyok/project/AlgorithmDemo/cpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object MString/CMakeFiles/mstring.dir/Match/string_match.cpp.o"
	cd /home/meyok/project/AlgorithmDemo/cpp/MString && /bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mstring.dir/Match/string_match.cpp.o -c /home/meyok/project/AlgorithmDemo/cpp/MString/Match/string_match.cpp

MString/CMakeFiles/mstring.dir/Match/string_match.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mstring.dir/Match/string_match.cpp.i"
	cd /home/meyok/project/AlgorithmDemo/cpp/MString && /bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/meyok/project/AlgorithmDemo/cpp/MString/Match/string_match.cpp > CMakeFiles/mstring.dir/Match/string_match.cpp.i

MString/CMakeFiles/mstring.dir/Match/string_match.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mstring.dir/Match/string_match.cpp.s"
	cd /home/meyok/project/AlgorithmDemo/cpp/MString && /bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/meyok/project/AlgorithmDemo/cpp/MString/Match/string_match.cpp -o CMakeFiles/mstring.dir/Match/string_match.cpp.s

MString/CMakeFiles/mstring.dir/demo.cpp.o: MString/CMakeFiles/mstring.dir/flags.make
MString/CMakeFiles/mstring.dir/demo.cpp.o: MString/demo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/meyok/project/AlgorithmDemo/cpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object MString/CMakeFiles/mstring.dir/demo.cpp.o"
	cd /home/meyok/project/AlgorithmDemo/cpp/MString && /bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mstring.dir/demo.cpp.o -c /home/meyok/project/AlgorithmDemo/cpp/MString/demo.cpp

MString/CMakeFiles/mstring.dir/demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mstring.dir/demo.cpp.i"
	cd /home/meyok/project/AlgorithmDemo/cpp/MString && /bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/meyok/project/AlgorithmDemo/cpp/MString/demo.cpp > CMakeFiles/mstring.dir/demo.cpp.i

MString/CMakeFiles/mstring.dir/demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mstring.dir/demo.cpp.s"
	cd /home/meyok/project/AlgorithmDemo/cpp/MString && /bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/meyok/project/AlgorithmDemo/cpp/MString/demo.cpp -o CMakeFiles/mstring.dir/demo.cpp.s

# Object files for target mstring
mstring_OBJECTS = \
"CMakeFiles/mstring.dir/Match/string_match.cpp.o" \
"CMakeFiles/mstring.dir/demo.cpp.o"

# External object files for target mstring
mstring_EXTERNAL_OBJECTS =

lib/libmstring.so: MString/CMakeFiles/mstring.dir/Match/string_match.cpp.o
lib/libmstring.so: MString/CMakeFiles/mstring.dir/demo.cpp.o
lib/libmstring.so: MString/CMakeFiles/mstring.dir/build.make
lib/libmstring.so: MString/CMakeFiles/mstring.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/meyok/project/AlgorithmDemo/cpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library ../lib/libmstring.so"
	cd /home/meyok/project/AlgorithmDemo/cpp/MString && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mstring.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
MString/CMakeFiles/mstring.dir/build: lib/libmstring.so

.PHONY : MString/CMakeFiles/mstring.dir/build

MString/CMakeFiles/mstring.dir/clean:
	cd /home/meyok/project/AlgorithmDemo/cpp/MString && $(CMAKE_COMMAND) -P CMakeFiles/mstring.dir/cmake_clean.cmake
.PHONY : MString/CMakeFiles/mstring.dir/clean

MString/CMakeFiles/mstring.dir/depend:
	cd /home/meyok/project/AlgorithmDemo/cpp && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/meyok/project/AlgorithmDemo/cpp /home/meyok/project/AlgorithmDemo/cpp/MString /home/meyok/project/AlgorithmDemo/cpp /home/meyok/project/AlgorithmDemo/cpp/MString /home/meyok/project/AlgorithmDemo/cpp/MString/CMakeFiles/mstring.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : MString/CMakeFiles/mstring.dir/depend

