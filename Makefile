# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ianertson/workspace/cpp-game

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ianertson/workspace/cpp-game

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/local/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/local/bin/ccmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/ianertson/workspace/cpp-game/CMakeFiles /home/ianertson/workspace/cpp-game//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/ianertson/workspace/cpp-game/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named pong

# Build rule for target.
pong: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 pong
.PHONY : pong

# fast build rule for target.
pong/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/pong.dir/build.make CMakeFiles/pong.dir/build
.PHONY : pong/fast

#=============================================================================
# Target rules for targets named ponginterface

# Build rule for target.
ponginterface: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 ponginterface
.PHONY : ponginterface

# fast build rule for target.
ponginterface/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ponginterface.dir/build.make CMakeFiles/ponginterface.dir/build
.PHONY : ponginterface/fast

src/Ball.o: src/Ball.cpp.o
.PHONY : src/Ball.o

# target to build an object file
src/Ball.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/pong.dir/build.make CMakeFiles/pong.dir/src/Ball.cpp.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ponginterface.dir/build.make CMakeFiles/ponginterface.dir/src/Ball.cpp.o
.PHONY : src/Ball.cpp.o

src/Ball.i: src/Ball.cpp.i
.PHONY : src/Ball.i

# target to preprocess a source file
src/Ball.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/pong.dir/build.make CMakeFiles/pong.dir/src/Ball.cpp.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ponginterface.dir/build.make CMakeFiles/ponginterface.dir/src/Ball.cpp.i
.PHONY : src/Ball.cpp.i

src/Ball.s: src/Ball.cpp.s
.PHONY : src/Ball.s

# target to generate assembly for a file
src/Ball.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/pong.dir/build.make CMakeFiles/pong.dir/src/Ball.cpp.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ponginterface.dir/build.make CMakeFiles/ponginterface.dir/src/Ball.cpp.s
.PHONY : src/Ball.cpp.s

src/Draw.o: src/Draw.cpp.o
.PHONY : src/Draw.o

# target to build an object file
src/Draw.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/pong.dir/build.make CMakeFiles/pong.dir/src/Draw.cpp.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ponginterface.dir/build.make CMakeFiles/ponginterface.dir/src/Draw.cpp.o
.PHONY : src/Draw.cpp.o

src/Draw.i: src/Draw.cpp.i
.PHONY : src/Draw.i

# target to preprocess a source file
src/Draw.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/pong.dir/build.make CMakeFiles/pong.dir/src/Draw.cpp.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ponginterface.dir/build.make CMakeFiles/ponginterface.dir/src/Draw.cpp.i
.PHONY : src/Draw.cpp.i

src/Draw.s: src/Draw.cpp.s
.PHONY : src/Draw.s

# target to generate assembly for a file
src/Draw.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/pong.dir/build.make CMakeFiles/pong.dir/src/Draw.cpp.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ponginterface.dir/build.make CMakeFiles/ponginterface.dir/src/Draw.cpp.s
.PHONY : src/Draw.cpp.s

src/Enemy.o: src/Enemy.cpp.o
.PHONY : src/Enemy.o

# target to build an object file
src/Enemy.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/pong.dir/build.make CMakeFiles/pong.dir/src/Enemy.cpp.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ponginterface.dir/build.make CMakeFiles/ponginterface.dir/src/Enemy.cpp.o
.PHONY : src/Enemy.cpp.o

src/Enemy.i: src/Enemy.cpp.i
.PHONY : src/Enemy.i

# target to preprocess a source file
src/Enemy.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/pong.dir/build.make CMakeFiles/pong.dir/src/Enemy.cpp.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ponginterface.dir/build.make CMakeFiles/ponginterface.dir/src/Enemy.cpp.i
.PHONY : src/Enemy.cpp.i

src/Enemy.s: src/Enemy.cpp.s
.PHONY : src/Enemy.s

# target to generate assembly for a file
src/Enemy.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/pong.dir/build.make CMakeFiles/pong.dir/src/Enemy.cpp.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ponginterface.dir/build.make CMakeFiles/ponginterface.dir/src/Enemy.cpp.s
.PHONY : src/Enemy.cpp.s

src/Font.o: src/Font.cpp.o
.PHONY : src/Font.o

# target to build an object file
src/Font.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/pong.dir/build.make CMakeFiles/pong.dir/src/Font.cpp.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ponginterface.dir/build.make CMakeFiles/ponginterface.dir/src/Font.cpp.o
.PHONY : src/Font.cpp.o

src/Font.i: src/Font.cpp.i
.PHONY : src/Font.i

# target to preprocess a source file
src/Font.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/pong.dir/build.make CMakeFiles/pong.dir/src/Font.cpp.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ponginterface.dir/build.make CMakeFiles/ponginterface.dir/src/Font.cpp.i
.PHONY : src/Font.cpp.i

src/Font.s: src/Font.cpp.s
.PHONY : src/Font.s

# target to generate assembly for a file
src/Font.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/pong.dir/build.make CMakeFiles/pong.dir/src/Font.cpp.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ponginterface.dir/build.make CMakeFiles/ponginterface.dir/src/Font.cpp.s
.PHONY : src/Font.cpp.s

src/Game.o: src/Game.cpp.o
.PHONY : src/Game.o

# target to build an object file
src/Game.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/pong.dir/build.make CMakeFiles/pong.dir/src/Game.cpp.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ponginterface.dir/build.make CMakeFiles/ponginterface.dir/src/Game.cpp.o
.PHONY : src/Game.cpp.o

src/Game.i: src/Game.cpp.i
.PHONY : src/Game.i

# target to preprocess a source file
src/Game.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/pong.dir/build.make CMakeFiles/pong.dir/src/Game.cpp.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ponginterface.dir/build.make CMakeFiles/ponginterface.dir/src/Game.cpp.i
.PHONY : src/Game.cpp.i

src/Game.s: src/Game.cpp.s
.PHONY : src/Game.s

# target to generate assembly for a file
src/Game.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/pong.dir/build.make CMakeFiles/pong.dir/src/Game.cpp.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ponginterface.dir/build.make CMakeFiles/ponginterface.dir/src/Game.cpp.s
.PHONY : src/Game.cpp.s

src/GameObject.o: src/GameObject.cpp.o
.PHONY : src/GameObject.o

# target to build an object file
src/GameObject.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/pong.dir/build.make CMakeFiles/pong.dir/src/GameObject.cpp.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ponginterface.dir/build.make CMakeFiles/ponginterface.dir/src/GameObject.cpp.o
.PHONY : src/GameObject.cpp.o

src/GameObject.i: src/GameObject.cpp.i
.PHONY : src/GameObject.i

# target to preprocess a source file
src/GameObject.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/pong.dir/build.make CMakeFiles/pong.dir/src/GameObject.cpp.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ponginterface.dir/build.make CMakeFiles/ponginterface.dir/src/GameObject.cpp.i
.PHONY : src/GameObject.cpp.i

src/GameObject.s: src/GameObject.cpp.s
.PHONY : src/GameObject.s

# target to generate assembly for a file
src/GameObject.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/pong.dir/build.make CMakeFiles/pong.dir/src/GameObject.cpp.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ponginterface.dir/build.make CMakeFiles/ponginterface.dir/src/GameObject.cpp.s
.PHONY : src/GameObject.cpp.s

src/Keyboard.o: src/Keyboard.cpp.o
.PHONY : src/Keyboard.o

# target to build an object file
src/Keyboard.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/pong.dir/build.make CMakeFiles/pong.dir/src/Keyboard.cpp.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ponginterface.dir/build.make CMakeFiles/ponginterface.dir/src/Keyboard.cpp.o
.PHONY : src/Keyboard.cpp.o

src/Keyboard.i: src/Keyboard.cpp.i
.PHONY : src/Keyboard.i

# target to preprocess a source file
src/Keyboard.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/pong.dir/build.make CMakeFiles/pong.dir/src/Keyboard.cpp.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ponginterface.dir/build.make CMakeFiles/ponginterface.dir/src/Keyboard.cpp.i
.PHONY : src/Keyboard.cpp.i

src/Keyboard.s: src/Keyboard.cpp.s
.PHONY : src/Keyboard.s

# target to generate assembly for a file
src/Keyboard.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/pong.dir/build.make CMakeFiles/pong.dir/src/Keyboard.cpp.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ponginterface.dir/build.make CMakeFiles/ponginterface.dir/src/Keyboard.cpp.s
.PHONY : src/Keyboard.cpp.s

src/Math.o: src/Math.cpp.o
.PHONY : src/Math.o

# target to build an object file
src/Math.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/pong.dir/build.make CMakeFiles/pong.dir/src/Math.cpp.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ponginterface.dir/build.make CMakeFiles/ponginterface.dir/src/Math.cpp.o
.PHONY : src/Math.cpp.o

src/Math.i: src/Math.cpp.i
.PHONY : src/Math.i

# target to preprocess a source file
src/Math.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/pong.dir/build.make CMakeFiles/pong.dir/src/Math.cpp.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ponginterface.dir/build.make CMakeFiles/ponginterface.dir/src/Math.cpp.i
.PHONY : src/Math.cpp.i

src/Math.s: src/Math.cpp.s
.PHONY : src/Math.s

# target to generate assembly for a file
src/Math.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/pong.dir/build.make CMakeFiles/pong.dir/src/Math.cpp.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ponginterface.dir/build.make CMakeFiles/ponginterface.dir/src/Math.cpp.s
.PHONY : src/Math.cpp.s

src/Pad.o: src/Pad.cpp.o
.PHONY : src/Pad.o

# target to build an object file
src/Pad.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/pong.dir/build.make CMakeFiles/pong.dir/src/Pad.cpp.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ponginterface.dir/build.make CMakeFiles/ponginterface.dir/src/Pad.cpp.o
.PHONY : src/Pad.cpp.o

src/Pad.i: src/Pad.cpp.i
.PHONY : src/Pad.i

# target to preprocess a source file
src/Pad.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/pong.dir/build.make CMakeFiles/pong.dir/src/Pad.cpp.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ponginterface.dir/build.make CMakeFiles/ponginterface.dir/src/Pad.cpp.i
.PHONY : src/Pad.cpp.i

src/Pad.s: src/Pad.cpp.s
.PHONY : src/Pad.s

# target to generate assembly for a file
src/Pad.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/pong.dir/build.make CMakeFiles/pong.dir/src/Pad.cpp.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ponginterface.dir/build.make CMakeFiles/ponginterface.dir/src/Pad.cpp.s
.PHONY : src/Pad.cpp.s

src/Player.o: src/Player.cpp.o
.PHONY : src/Player.o

# target to build an object file
src/Player.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/pong.dir/build.make CMakeFiles/pong.dir/src/Player.cpp.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ponginterface.dir/build.make CMakeFiles/ponginterface.dir/src/Player.cpp.o
.PHONY : src/Player.cpp.o

src/Player.i: src/Player.cpp.i
.PHONY : src/Player.i

# target to preprocess a source file
src/Player.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/pong.dir/build.make CMakeFiles/pong.dir/src/Player.cpp.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ponginterface.dir/build.make CMakeFiles/ponginterface.dir/src/Player.cpp.i
.PHONY : src/Player.cpp.i

src/Player.s: src/Player.cpp.s
.PHONY : src/Player.s

# target to generate assembly for a file
src/Player.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/pong.dir/build.make CMakeFiles/pong.dir/src/Player.cpp.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ponginterface.dir/build.make CMakeFiles/ponginterface.dir/src/Player.cpp.s
.PHONY : src/Player.cpp.s

src/PluginManager.o: src/PluginManager.cpp.o
.PHONY : src/PluginManager.o

# target to build an object file
src/PluginManager.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/pong.dir/build.make CMakeFiles/pong.dir/src/PluginManager.cpp.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ponginterface.dir/build.make CMakeFiles/ponginterface.dir/src/PluginManager.cpp.o
.PHONY : src/PluginManager.cpp.o

src/PluginManager.i: src/PluginManager.cpp.i
.PHONY : src/PluginManager.i

# target to preprocess a source file
src/PluginManager.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/pong.dir/build.make CMakeFiles/pong.dir/src/PluginManager.cpp.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ponginterface.dir/build.make CMakeFiles/ponginterface.dir/src/PluginManager.cpp.i
.PHONY : src/PluginManager.cpp.i

src/PluginManager.s: src/PluginManager.cpp.s
.PHONY : src/PluginManager.s

# target to generate assembly for a file
src/PluginManager.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/pong.dir/build.make CMakeFiles/pong.dir/src/PluginManager.cpp.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ponginterface.dir/build.make CMakeFiles/ponginterface.dir/src/PluginManager.cpp.s
.PHONY : src/PluginManager.cpp.s

src/collision.o: src/collision.cpp.o
.PHONY : src/collision.o

# target to build an object file
src/collision.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/pong.dir/build.make CMakeFiles/pong.dir/src/collision.cpp.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ponginterface.dir/build.make CMakeFiles/ponginterface.dir/src/collision.cpp.o
.PHONY : src/collision.cpp.o

src/collision.i: src/collision.cpp.i
.PHONY : src/collision.i

# target to preprocess a source file
src/collision.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/pong.dir/build.make CMakeFiles/pong.dir/src/collision.cpp.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ponginterface.dir/build.make CMakeFiles/ponginterface.dir/src/collision.cpp.i
.PHONY : src/collision.cpp.i

src/collision.s: src/collision.cpp.s
.PHONY : src/collision.s

# target to generate assembly for a file
src/collision.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/pong.dir/build.make CMakeFiles/pong.dir/src/collision.cpp.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ponginterface.dir/build.make CMakeFiles/ponginterface.dir/src/collision.cpp.s
.PHONY : src/collision.cpp.s

src/main.o: src/main.cpp.o
.PHONY : src/main.o

# target to build an object file
src/main.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/pong.dir/build.make CMakeFiles/pong.dir/src/main.cpp.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ponginterface.dir/build.make CMakeFiles/ponginterface.dir/src/main.cpp.o
.PHONY : src/main.cpp.o

src/main.i: src/main.cpp.i
.PHONY : src/main.i

# target to preprocess a source file
src/main.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/pong.dir/build.make CMakeFiles/pong.dir/src/main.cpp.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ponginterface.dir/build.make CMakeFiles/ponginterface.dir/src/main.cpp.i
.PHONY : src/main.cpp.i

src/main.s: src/main.cpp.s
.PHONY : src/main.s

# target to generate assembly for a file
src/main.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/pong.dir/build.make CMakeFiles/pong.dir/src/main.cpp.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ponginterface.dir/build.make CMakeFiles/ponginterface.dir/src/main.cpp.s
.PHONY : src/main.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... pong"
	@echo "... ponginterface"
	@echo "... src/Ball.o"
	@echo "... src/Ball.i"
	@echo "... src/Ball.s"
	@echo "... src/Draw.o"
	@echo "... src/Draw.i"
	@echo "... src/Draw.s"
	@echo "... src/Enemy.o"
	@echo "... src/Enemy.i"
	@echo "... src/Enemy.s"
	@echo "... src/Font.o"
	@echo "... src/Font.i"
	@echo "... src/Font.s"
	@echo "... src/Game.o"
	@echo "... src/Game.i"
	@echo "... src/Game.s"
	@echo "... src/GameObject.o"
	@echo "... src/GameObject.i"
	@echo "... src/GameObject.s"
	@echo "... src/Keyboard.o"
	@echo "... src/Keyboard.i"
	@echo "... src/Keyboard.s"
	@echo "... src/Math.o"
	@echo "... src/Math.i"
	@echo "... src/Math.s"
	@echo "... src/Pad.o"
	@echo "... src/Pad.i"
	@echo "... src/Pad.s"
	@echo "... src/Player.o"
	@echo "... src/Player.i"
	@echo "... src/Player.s"
	@echo "... src/PluginManager.o"
	@echo "... src/PluginManager.i"
	@echo "... src/PluginManager.s"
	@echo "... src/collision.o"
	@echo "... src/collision.i"
	@echo "... src/collision.s"
	@echo "... src/main.o"
	@echo "... src/main.i"
	@echo "... src/main.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

