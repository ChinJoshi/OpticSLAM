# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/chinmaya/OpticSLAM/ORBSLAM_MapSave_Stereo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/chinmaya/OpticSLAM/ORBSLAM_MapSave_Stereo

# Include any dependencies generated for this target.
include CMakeFiles/bin_vocabulary.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/bin_vocabulary.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/bin_vocabulary.dir/flags.make

CMakeFiles/bin_vocabulary.dir/tools/bin_vocabulary.cc.o: CMakeFiles/bin_vocabulary.dir/flags.make
CMakeFiles/bin_vocabulary.dir/tools/bin_vocabulary.cc.o: tools/bin_vocabulary.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chinmaya/OpticSLAM/ORBSLAM_MapSave_Stereo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/bin_vocabulary.dir/tools/bin_vocabulary.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bin_vocabulary.dir/tools/bin_vocabulary.cc.o -c /home/chinmaya/OpticSLAM/ORBSLAM_MapSave_Stereo/tools/bin_vocabulary.cc

CMakeFiles/bin_vocabulary.dir/tools/bin_vocabulary.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bin_vocabulary.dir/tools/bin_vocabulary.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chinmaya/OpticSLAM/ORBSLAM_MapSave_Stereo/tools/bin_vocabulary.cc > CMakeFiles/bin_vocabulary.dir/tools/bin_vocabulary.cc.i

CMakeFiles/bin_vocabulary.dir/tools/bin_vocabulary.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bin_vocabulary.dir/tools/bin_vocabulary.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chinmaya/OpticSLAM/ORBSLAM_MapSave_Stereo/tools/bin_vocabulary.cc -o CMakeFiles/bin_vocabulary.dir/tools/bin_vocabulary.cc.s

CMakeFiles/bin_vocabulary.dir/tools/bin_vocabulary.cc.o.requires:

.PHONY : CMakeFiles/bin_vocabulary.dir/tools/bin_vocabulary.cc.o.requires

CMakeFiles/bin_vocabulary.dir/tools/bin_vocabulary.cc.o.provides: CMakeFiles/bin_vocabulary.dir/tools/bin_vocabulary.cc.o.requires
	$(MAKE) -f CMakeFiles/bin_vocabulary.dir/build.make CMakeFiles/bin_vocabulary.dir/tools/bin_vocabulary.cc.o.provides.build
.PHONY : CMakeFiles/bin_vocabulary.dir/tools/bin_vocabulary.cc.o.provides

CMakeFiles/bin_vocabulary.dir/tools/bin_vocabulary.cc.o.provides.build: CMakeFiles/bin_vocabulary.dir/tools/bin_vocabulary.cc.o


# Object files for target bin_vocabulary
bin_vocabulary_OBJECTS = \
"CMakeFiles/bin_vocabulary.dir/tools/bin_vocabulary.cc.o"

# External object files for target bin_vocabulary
bin_vocabulary_EXTERNAL_OBJECTS =

tools/bin_vocabulary: CMakeFiles/bin_vocabulary.dir/tools/bin_vocabulary.cc.o
tools/bin_vocabulary: CMakeFiles/bin_vocabulary.dir/build.make
tools/bin_vocabulary: lib/libORB_SLAM2.so
tools/bin_vocabulary: /usr/local/lib/libopencv_cudabgsegm.so.3.2.0
tools/bin_vocabulary: /usr/local/lib/libopencv_cudaobjdetect.so.3.2.0
tools/bin_vocabulary: /usr/local/lib/libopencv_cudastereo.so.3.2.0
tools/bin_vocabulary: /usr/local/lib/libopencv_shape.so.3.2.0
tools/bin_vocabulary: /usr/local/lib/libopencv_stitching.so.3.2.0
tools/bin_vocabulary: /usr/local/lib/libopencv_cudafeatures2d.so.3.2.0
tools/bin_vocabulary: /usr/local/lib/libopencv_superres.so.3.2.0
tools/bin_vocabulary: /usr/local/lib/libopencv_cudacodec.so.3.2.0
tools/bin_vocabulary: /usr/local/lib/libopencv_videostab.so.3.2.0
tools/bin_vocabulary: /usr/local/lib/libopencv_cudaoptflow.so.3.2.0
tools/bin_vocabulary: /usr/local/lib/libopencv_cudalegacy.so.3.2.0
tools/bin_vocabulary: /usr/local/lib/libopencv_calib3d.so.3.2.0
tools/bin_vocabulary: /usr/local/lib/libopencv_cudawarping.so.3.2.0
tools/bin_vocabulary: /usr/local/lib/libopencv_features2d.so.3.2.0
tools/bin_vocabulary: /usr/local/lib/libopencv_flann.so.3.2.0
tools/bin_vocabulary: /usr/local/lib/libopencv_objdetect.so.3.2.0
tools/bin_vocabulary: /usr/local/lib/libopencv_highgui.so.3.2.0
tools/bin_vocabulary: /usr/local/lib/libopencv_ml.so.3.2.0
tools/bin_vocabulary: /usr/local/lib/libopencv_photo.so.3.2.0
tools/bin_vocabulary: /usr/local/lib/libopencv_cudaimgproc.so.3.2.0
tools/bin_vocabulary: /usr/local/lib/libopencv_cudafilters.so.3.2.0
tools/bin_vocabulary: /usr/local/lib/libopencv_cudaarithm.so.3.2.0
tools/bin_vocabulary: /usr/local/lib/libopencv_video.so.3.2.0
tools/bin_vocabulary: /usr/local/lib/libopencv_videoio.so.3.2.0
tools/bin_vocabulary: /usr/local/lib/libopencv_imgcodecs.so.3.2.0
tools/bin_vocabulary: /usr/local/lib/libopencv_imgproc.so.3.2.0
tools/bin_vocabulary: /usr/local/lib/libopencv_viz.so.3.2.0
tools/bin_vocabulary: /usr/local/lib/libopencv_core.so.3.2.0
tools/bin_vocabulary: /usr/local/lib/libopencv_cudev.so.3.2.0
tools/bin_vocabulary: Thirdparty/DBoW2/lib/libDBoW2.so
tools/bin_vocabulary: /usr/local/lib/libpangolin.so
tools/bin_vocabulary: /usr/lib/x86_64-linux-gnu/libGLU.so
tools/bin_vocabulary: /usr/lib/x86_64-linux-gnu/libGL.so
tools/bin_vocabulary: /usr/lib/x86_64-linux-gnu/libGLEW.so
tools/bin_vocabulary: /usr/lib/x86_64-linux-gnu/libSM.so
tools/bin_vocabulary: /usr/lib/x86_64-linux-gnu/libICE.so
tools/bin_vocabulary: /usr/lib/x86_64-linux-gnu/libX11.so
tools/bin_vocabulary: /usr/lib/x86_64-linux-gnu/libXext.so
tools/bin_vocabulary: /usr/lib/x86_64-linux-gnu/libdc1394.so
tools/bin_vocabulary: /usr/lib/x86_64-linux-gnu/libavcodec.so
tools/bin_vocabulary: /usr/lib/x86_64-linux-gnu/libavformat.so
tools/bin_vocabulary: /usr/lib/x86_64-linux-gnu/libavutil.so
tools/bin_vocabulary: /usr/lib/x86_64-linux-gnu/libswscale.so
tools/bin_vocabulary: /usr/lib/x86_64-linux-gnu/libavdevice.so
tools/bin_vocabulary: /usr/lib/x86_64-linux-gnu/libpng.so
tools/bin_vocabulary: /usr/lib/x86_64-linux-gnu/libz.so
tools/bin_vocabulary: /usr/lib/x86_64-linux-gnu/libjpeg.so
tools/bin_vocabulary: /usr/lib/x86_64-linux-gnu/libtiff.so
tools/bin_vocabulary: /usr/lib/x86_64-linux-gnu/libIlmImf.so
tools/bin_vocabulary: Thirdparty/g2o/lib/libg2o.so
tools/bin_vocabulary: /usr/local/lib/libboost_serialization.so
tools/bin_vocabulary: CMakeFiles/bin_vocabulary.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/chinmaya/OpticSLAM/ORBSLAM_MapSave_Stereo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable tools/bin_vocabulary"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bin_vocabulary.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/bin_vocabulary.dir/build: tools/bin_vocabulary

.PHONY : CMakeFiles/bin_vocabulary.dir/build

CMakeFiles/bin_vocabulary.dir/requires: CMakeFiles/bin_vocabulary.dir/tools/bin_vocabulary.cc.o.requires

.PHONY : CMakeFiles/bin_vocabulary.dir/requires

CMakeFiles/bin_vocabulary.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/bin_vocabulary.dir/cmake_clean.cmake
.PHONY : CMakeFiles/bin_vocabulary.dir/clean

CMakeFiles/bin_vocabulary.dir/depend:
	cd /home/chinmaya/OpticSLAM/ORBSLAM_MapSave_Stereo && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chinmaya/OpticSLAM/ORBSLAM_MapSave_Stereo /home/chinmaya/OpticSLAM/ORBSLAM_MapSave_Stereo /home/chinmaya/OpticSLAM/ORBSLAM_MapSave_Stereo /home/chinmaya/OpticSLAM/ORBSLAM_MapSave_Stereo /home/chinmaya/OpticSLAM/ORBSLAM_MapSave_Stereo/CMakeFiles/bin_vocabulary.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/bin_vocabulary.dir/depend

