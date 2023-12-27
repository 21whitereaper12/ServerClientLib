# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ivan/Programming/c++/ServerClientLib

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ivan/Programming/c++/ServerClientLib

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Running CMake cache editor..."
	/usr/bin/ccmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/ivan/Programming/c++/ServerClientLib/CMakeFiles /home/ivan/Programming/c++/ServerClientLib//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/ivan/Programming/c++/ServerClientLib/CMakeFiles 0
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
# Target rules for targets named server

# Build rule for target.
server: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 server
.PHONY : server

# fast build rule for target.
server/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/build
.PHONY : server/fast

#=============================================================================
# Target rules for targets named client

# Build rule for target.
client: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 client
.PHONY : client

# fast build rule for target.
client/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/build
.PHONY : client/fast

src/Client/Client.o: src/Client/Client.cpp.o
.PHONY : src/Client/Client.o

# target to build an object file
src/Client/Client.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/Client/Client.cpp.o
.PHONY : src/Client/Client.cpp.o

src/Client/Client.i: src/Client/Client.cpp.i
.PHONY : src/Client/Client.i

# target to preprocess a source file
src/Client/Client.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/Client/Client.cpp.i
.PHONY : src/Client/Client.cpp.i

src/Client/Client.s: src/Client/Client.cpp.s
.PHONY : src/Client/Client.s

# target to generate assembly for a file
src/Client/Client.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/Client/Client.cpp.s
.PHONY : src/Client/Client.cpp.s

src/Connection/Connection.o: src/Connection/Connection.cpp.o
.PHONY : src/Connection/Connection.o

# target to build an object file
src/Connection/Connection.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/src/Connection/Connection.cpp.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/Connection/Connection.cpp.o
.PHONY : src/Connection/Connection.cpp.o

src/Connection/Connection.i: src/Connection/Connection.cpp.i
.PHONY : src/Connection/Connection.i

# target to preprocess a source file
src/Connection/Connection.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/src/Connection/Connection.cpp.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/Connection/Connection.cpp.i
.PHONY : src/Connection/Connection.cpp.i

src/Connection/Connection.s: src/Connection/Connection.cpp.s
.PHONY : src/Connection/Connection.s

# target to generate assembly for a file
src/Connection/Connection.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/src/Connection/Connection.cpp.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/Connection/Connection.cpp.s
.PHONY : src/Connection/Connection.cpp.s

src/Exceptions/BindException.o: src/Exceptions/BindException.cpp.o
.PHONY : src/Exceptions/BindException.o

# target to build an object file
src/Exceptions/BindException.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/src/Exceptions/BindException.cpp.o
.PHONY : src/Exceptions/BindException.cpp.o

src/Exceptions/BindException.i: src/Exceptions/BindException.cpp.i
.PHONY : src/Exceptions/BindException.i

# target to preprocess a source file
src/Exceptions/BindException.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/src/Exceptions/BindException.cpp.i
.PHONY : src/Exceptions/BindException.cpp.i

src/Exceptions/BindException.s: src/Exceptions/BindException.cpp.s
.PHONY : src/Exceptions/BindException.s

# target to generate assembly for a file
src/Exceptions/BindException.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/src/Exceptions/BindException.cpp.s
.PHONY : src/Exceptions/BindException.cpp.s

src/Exceptions/ClientException.o: src/Exceptions/ClientException.cpp.o
.PHONY : src/Exceptions/ClientException.o

# target to build an object file
src/Exceptions/ClientException.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/Exceptions/ClientException.cpp.o
.PHONY : src/Exceptions/ClientException.cpp.o

src/Exceptions/ClientException.i: src/Exceptions/ClientException.cpp.i
.PHONY : src/Exceptions/ClientException.i

# target to preprocess a source file
src/Exceptions/ClientException.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/Exceptions/ClientException.cpp.i
.PHONY : src/Exceptions/ClientException.cpp.i

src/Exceptions/ClientException.s: src/Exceptions/ClientException.cpp.s
.PHONY : src/Exceptions/ClientException.s

# target to generate assembly for a file
src/Exceptions/ClientException.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/Exceptions/ClientException.cpp.s
.PHONY : src/Exceptions/ClientException.cpp.s

src/Exceptions/ConnectionException.o: src/Exceptions/ConnectionException.cpp.o
.PHONY : src/Exceptions/ConnectionException.o

# target to build an object file
src/Exceptions/ConnectionException.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/src/Exceptions/ConnectionException.cpp.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/Exceptions/ConnectionException.cpp.o
.PHONY : src/Exceptions/ConnectionException.cpp.o

src/Exceptions/ConnectionException.i: src/Exceptions/ConnectionException.cpp.i
.PHONY : src/Exceptions/ConnectionException.i

# target to preprocess a source file
src/Exceptions/ConnectionException.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/src/Exceptions/ConnectionException.cpp.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/Exceptions/ConnectionException.cpp.i
.PHONY : src/Exceptions/ConnectionException.cpp.i

src/Exceptions/ConnectionException.s: src/Exceptions/ConnectionException.cpp.s
.PHONY : src/Exceptions/ConnectionException.s

# target to generate assembly for a file
src/Exceptions/ConnectionException.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/src/Exceptions/ConnectionException.cpp.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/Exceptions/ConnectionException.cpp.s
.PHONY : src/Exceptions/ConnectionException.cpp.s

src/Exceptions/DisconnectionException.o: src/Exceptions/DisconnectionException.cpp.o
.PHONY : src/Exceptions/DisconnectionException.o

# target to build an object file
src/Exceptions/DisconnectionException.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/Exceptions/DisconnectionException.cpp.o
.PHONY : src/Exceptions/DisconnectionException.cpp.o

src/Exceptions/DisconnectionException.i: src/Exceptions/DisconnectionException.cpp.i
.PHONY : src/Exceptions/DisconnectionException.i

# target to preprocess a source file
src/Exceptions/DisconnectionException.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/Exceptions/DisconnectionException.cpp.i
.PHONY : src/Exceptions/DisconnectionException.cpp.i

src/Exceptions/DisconnectionException.s: src/Exceptions/DisconnectionException.cpp.s
.PHONY : src/Exceptions/DisconnectionException.s

# target to generate assembly for a file
src/Exceptions/DisconnectionException.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/Exceptions/DisconnectionException.cpp.s
.PHONY : src/Exceptions/DisconnectionException.cpp.s

src/Exceptions/Exception.o: src/Exceptions/Exception.cpp.o
.PHONY : src/Exceptions/Exception.o

# target to build an object file
src/Exceptions/Exception.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/src/Exceptions/Exception.cpp.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/Exceptions/Exception.cpp.o
.PHONY : src/Exceptions/Exception.cpp.o

src/Exceptions/Exception.i: src/Exceptions/Exception.cpp.i
.PHONY : src/Exceptions/Exception.i

# target to preprocess a source file
src/Exceptions/Exception.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/src/Exceptions/Exception.cpp.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/Exceptions/Exception.cpp.i
.PHONY : src/Exceptions/Exception.cpp.i

src/Exceptions/Exception.s: src/Exceptions/Exception.cpp.s
.PHONY : src/Exceptions/Exception.s

# target to generate assembly for a file
src/Exceptions/Exception.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/src/Exceptions/Exception.cpp.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/Exceptions/Exception.cpp.s
.PHONY : src/Exceptions/Exception.cpp.s

src/Exceptions/HostException.o: src/Exceptions/HostException.cpp.o
.PHONY : src/Exceptions/HostException.o

# target to build an object file
src/Exceptions/HostException.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/src/Exceptions/HostException.cpp.o
.PHONY : src/Exceptions/HostException.cpp.o

src/Exceptions/HostException.i: src/Exceptions/HostException.cpp.i
.PHONY : src/Exceptions/HostException.i

# target to preprocess a source file
src/Exceptions/HostException.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/src/Exceptions/HostException.cpp.i
.PHONY : src/Exceptions/HostException.cpp.i

src/Exceptions/HostException.s: src/Exceptions/HostException.cpp.s
.PHONY : src/Exceptions/HostException.s

# target to generate assembly for a file
src/Exceptions/HostException.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/src/Exceptions/HostException.cpp.s
.PHONY : src/Exceptions/HostException.cpp.s

src/Exceptions/ListenException.o: src/Exceptions/ListenException.cpp.o
.PHONY : src/Exceptions/ListenException.o

# target to build an object file
src/Exceptions/ListenException.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/src/Exceptions/ListenException.cpp.o
.PHONY : src/Exceptions/ListenException.cpp.o

src/Exceptions/ListenException.i: src/Exceptions/ListenException.cpp.i
.PHONY : src/Exceptions/ListenException.i

# target to preprocess a source file
src/Exceptions/ListenException.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/src/Exceptions/ListenException.cpp.i
.PHONY : src/Exceptions/ListenException.cpp.i

src/Exceptions/ListenException.s: src/Exceptions/ListenException.cpp.s
.PHONY : src/Exceptions/ListenException.s

# target to generate assembly for a file
src/Exceptions/ListenException.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/src/Exceptions/ListenException.cpp.s
.PHONY : src/Exceptions/ListenException.cpp.s

src/Exceptions/ServerException.o: src/Exceptions/ServerException.cpp.o
.PHONY : src/Exceptions/ServerException.o

# target to build an object file
src/Exceptions/ServerException.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/src/Exceptions/ServerException.cpp.o
.PHONY : src/Exceptions/ServerException.cpp.o

src/Exceptions/ServerException.i: src/Exceptions/ServerException.cpp.i
.PHONY : src/Exceptions/ServerException.i

# target to preprocess a source file
src/Exceptions/ServerException.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/src/Exceptions/ServerException.cpp.i
.PHONY : src/Exceptions/ServerException.cpp.i

src/Exceptions/ServerException.s: src/Exceptions/ServerException.cpp.s
.PHONY : src/Exceptions/ServerException.s

# target to generate assembly for a file
src/Exceptions/ServerException.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/src/Exceptions/ServerException.cpp.s
.PHONY : src/Exceptions/ServerException.cpp.s

src/Exceptions/SocketOpeningException.o: src/Exceptions/SocketOpeningException.cpp.o
.PHONY : src/Exceptions/SocketOpeningException.o

# target to build an object file
src/Exceptions/SocketOpeningException.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/Exceptions/SocketOpeningException.cpp.o
.PHONY : src/Exceptions/SocketOpeningException.cpp.o

src/Exceptions/SocketOpeningException.i: src/Exceptions/SocketOpeningException.cpp.i
.PHONY : src/Exceptions/SocketOpeningException.i

# target to preprocess a source file
src/Exceptions/SocketOpeningException.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/Exceptions/SocketOpeningException.cpp.i
.PHONY : src/Exceptions/SocketOpeningException.cpp.i

src/Exceptions/SocketOpeningException.s: src/Exceptions/SocketOpeningException.cpp.s
.PHONY : src/Exceptions/SocketOpeningException.s

# target to generate assembly for a file
src/Exceptions/SocketOpeningException.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/Exceptions/SocketOpeningException.cpp.s
.PHONY : src/Exceptions/SocketOpeningException.cpp.s

src/Server/Server.o: src/Server/Server.cpp.o
.PHONY : src/Server/Server.o

# target to build an object file
src/Server/Server.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/src/Server/Server.cpp.o
.PHONY : src/Server/Server.cpp.o

src/Server/Server.i: src/Server/Server.cpp.i
.PHONY : src/Server/Server.i

# target to preprocess a source file
src/Server/Server.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/src/Server/Server.cpp.i
.PHONY : src/Server/Server.cpp.i

src/Server/Server.s: src/Server/Server.cpp.s
.PHONY : src/Server/Server.s

# target to generate assembly for a file
src/Server/Server.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/src/Server/Server.cpp.s
.PHONY : src/Server/Server.cpp.s

src/client_main.o: src/client_main.cpp.o
.PHONY : src/client_main.o

# target to build an object file
src/client_main.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/client_main.cpp.o
.PHONY : src/client_main.cpp.o

src/client_main.i: src/client_main.cpp.i
.PHONY : src/client_main.i

# target to preprocess a source file
src/client_main.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/client_main.cpp.i
.PHONY : src/client_main.cpp.i

src/client_main.s: src/client_main.cpp.s
.PHONY : src/client_main.s

# target to generate assembly for a file
src/client_main.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/client_main.cpp.s
.PHONY : src/client_main.cpp.s

src/server_main.o: src/server_main.cpp.o
.PHONY : src/server_main.o

# target to build an object file
src/server_main.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/src/server_main.cpp.o
.PHONY : src/server_main.cpp.o

src/server_main.i: src/server_main.cpp.i
.PHONY : src/server_main.i

# target to preprocess a source file
src/server_main.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/src/server_main.cpp.i
.PHONY : src/server_main.cpp.i

src/server_main.s: src/server_main.cpp.s
.PHONY : src/server_main.s

# target to generate assembly for a file
src/server_main.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/src/server_main.cpp.s
.PHONY : src/server_main.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... client"
	@echo "... server"
	@echo "... src/Client/Client.o"
	@echo "... src/Client/Client.i"
	@echo "... src/Client/Client.s"
	@echo "... src/Connection/Connection.o"
	@echo "... src/Connection/Connection.i"
	@echo "... src/Connection/Connection.s"
	@echo "... src/Exceptions/BindException.o"
	@echo "... src/Exceptions/BindException.i"
	@echo "... src/Exceptions/BindException.s"
	@echo "... src/Exceptions/ClientException.o"
	@echo "... src/Exceptions/ClientException.i"
	@echo "... src/Exceptions/ClientException.s"
	@echo "... src/Exceptions/ConnectionException.o"
	@echo "... src/Exceptions/ConnectionException.i"
	@echo "... src/Exceptions/ConnectionException.s"
	@echo "... src/Exceptions/DisconnectionException.o"
	@echo "... src/Exceptions/DisconnectionException.i"
	@echo "... src/Exceptions/DisconnectionException.s"
	@echo "... src/Exceptions/Exception.o"
	@echo "... src/Exceptions/Exception.i"
	@echo "... src/Exceptions/Exception.s"
	@echo "... src/Exceptions/HostException.o"
	@echo "... src/Exceptions/HostException.i"
	@echo "... src/Exceptions/HostException.s"
	@echo "... src/Exceptions/ListenException.o"
	@echo "... src/Exceptions/ListenException.i"
	@echo "... src/Exceptions/ListenException.s"
	@echo "... src/Exceptions/ServerException.o"
	@echo "... src/Exceptions/ServerException.i"
	@echo "... src/Exceptions/ServerException.s"
	@echo "... src/Exceptions/SocketOpeningException.o"
	@echo "... src/Exceptions/SocketOpeningException.i"
	@echo "... src/Exceptions/SocketOpeningException.s"
	@echo "... src/Server/Server.o"
	@echo "... src/Server/Server.i"
	@echo "... src/Server/Server.s"
	@echo "... src/client_main.o"
	@echo "... src/client_main.i"
	@echo "... src/client_main.s"
	@echo "... src/server_main.o"
	@echo "... src/server_main.i"
	@echo "... src/server_main.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

