# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/julian/Escritorio/Taller 3/Taller_3_VisionArtificial"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/julian/Escritorio/Taller 3/Taller_3_VisionArtificial/build"

# Include any dependencies generated for this target.
include CMakeFiles/taller_3.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/taller_3.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/taller_3.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/taller_3.dir/flags.make

CMakeFiles/taller_3.dir/taller_3.cxx.o: CMakeFiles/taller_3.dir/flags.make
CMakeFiles/taller_3.dir/taller_3.cxx.o: ../taller_3.cxx
CMakeFiles/taller_3.dir/taller_3.cxx.o: CMakeFiles/taller_3.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/julian/Escritorio/Taller 3/Taller_3_VisionArtificial/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/taller_3.dir/taller_3.cxx.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/taller_3.dir/taller_3.cxx.o -MF CMakeFiles/taller_3.dir/taller_3.cxx.o.d -o CMakeFiles/taller_3.dir/taller_3.cxx.o -c "/home/julian/Escritorio/Taller 3/Taller_3_VisionArtificial/taller_3.cxx"

CMakeFiles/taller_3.dir/taller_3.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/taller_3.dir/taller_3.cxx.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/julian/Escritorio/Taller 3/Taller_3_VisionArtificial/taller_3.cxx" > CMakeFiles/taller_3.dir/taller_3.cxx.i

CMakeFiles/taller_3.dir/taller_3.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/taller_3.dir/taller_3.cxx.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/julian/Escritorio/Taller 3/Taller_3_VisionArtificial/taller_3.cxx" -o CMakeFiles/taller_3.dir/taller_3.cxx.s

# Object files for target taller_3
taller_3_OBJECTS = \
"CMakeFiles/taller_3.dir/taller_3.cxx.o"

# External object files for target taller_3
taller_3_EXTERNAL_OBJECTS =

taller_3: CMakeFiles/taller_3.dir/taller_3.cxx.o
taller_3: CMakeFiles/taller_3.dir/build.make
taller_3: /usr/local/lib/libopencv_gapi.so.4.6.0
taller_3: /usr/local/lib/libopencv_highgui.so.4.6.0
taller_3: /usr/local/lib/libopencv_ml.so.4.6.0
taller_3: /usr/local/lib/libopencv_objdetect.so.4.6.0
taller_3: /usr/local/lib/libopencv_photo.so.4.6.0
taller_3: /usr/local/lib/libopencv_stitching.so.4.6.0
taller_3: /usr/local/lib/libopencv_video.so.4.6.0
taller_3: /usr/local/lib/libopencv_videoio.so.4.6.0
taller_3: /usr/local/lib/libopencv_imgcodecs.so.4.6.0
taller_3: /usr/local/lib/libopencv_dnn.so.4.6.0
taller_3: /usr/local/lib/libopencv_calib3d.so.4.6.0
taller_3: /usr/local/lib/libopencv_features2d.so.4.6.0
taller_3: /usr/local/lib/libopencv_flann.so.4.6.0
taller_3: /usr/local/lib/libopencv_imgproc.so.4.6.0
taller_3: /usr/local/lib/libopencv_core.so.4.6.0
taller_3: CMakeFiles/taller_3.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/julian/Escritorio/Taller 3/Taller_3_VisionArtificial/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable taller_3"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/taller_3.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/taller_3.dir/build: taller_3
.PHONY : CMakeFiles/taller_3.dir/build

CMakeFiles/taller_3.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/taller_3.dir/cmake_clean.cmake
.PHONY : CMakeFiles/taller_3.dir/clean

CMakeFiles/taller_3.dir/depend:
	cd "/home/julian/Escritorio/Taller 3/Taller_3_VisionArtificial/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/julian/Escritorio/Taller 3/Taller_3_VisionArtificial" "/home/julian/Escritorio/Taller 3/Taller_3_VisionArtificial" "/home/julian/Escritorio/Taller 3/Taller_3_VisionArtificial/build" "/home/julian/Escritorio/Taller 3/Taller_3_VisionArtificial/build" "/home/julian/Escritorio/Taller 3/Taller_3_VisionArtificial/build/CMakeFiles/taller_3.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/taller_3.dir/depend

