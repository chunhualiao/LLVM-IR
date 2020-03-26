# Must set this to use source command
SHELL := /bin/bash
# regular C files
# -----------------------------------------------
C_FILES = \
  accumulationStmt.c \
  constType.c \
  forLoop.c \
  func1.c \
  ifStmt.c \
  pointerArray.c \
  parallelfor.c \
  struct.c \
  typedefType.c \
  variableDeclaration.c

# We try four ways to dump our the IR
C_FILES_LLVM_v1 = $(C_FILES:.c=.v1.c.ll) 
C_FILES_LLVM_v2 = $(C_FILES:.c=.v2.c.ll) 
C_FILES_LLVM_v3 = $(C_FILES:.c=.v3.c.ll) 
C_FILES_LLVM_v4 = $(C_FILES:.c=.v4.c.ll) 

#  the simplest way
$(C_FILES_LLVM_v1): %.v1.c.ll:%.c
	clang -S -emit-llvm $< -o $@

# Turn on optimization, but disable llvm passes
$(C_FILES_LLVM_v2): %.v2.c.ll:%.c
	clang -O3 -Xclang -disable-llvm-passes -S -emit-llvm $< -o $@

# mem allocations converted to registers, for the default dump
$(C_FILES_LLVM_v3): %.v3.c.ll:%.v1.c.ll
	opt -S -mem2reg -instnamer $< -o $@

# mem allocations converted to registers, for the O3 dump
$(C_FILES_LLVM_v4): %.v4.c.ll:%.v2.c.ll
	opt -S -mem2reg -instnamer $< -o $@

# C++ files with .cpp suffix
CPP11_FILES = \
   lambda.cpp \
   indirectLambdaCall.cpp

CPP_FILES = \
   autoKernel.cpp \
   arrayRefs.cpp \
   constructor.cpp \
   class.cpp \
   namespace.cpp

# Not working for llvm 6.0
# CPP_FILES += $(CPP11_FILES)

CPP_FILES_LLVM_v1 = $(CPP_FILES:.cpp=.v1.cpp.ll) 
CPP_FILES_LLVM_v2 = $(CPP_FILES:.cpp=.v2.cpp.ll) 
CPP_FILES_LLVM_v3 = $(CPP_FILES:.cpp=.v3.cpp.ll) 
CPP_FILES_LLVM_v4 = $(CPP_FILES:.cpp=.v4.cpp.ll) 

$(CPP_FILES_LLVM_v1): %.v1.cpp.ll:%.cpp
	clang -S -emit-llvm $< -o $@

$(CPP_FILES_LLVM_v2): %.v2.cpp.ll:%.cpp
	clang -O3 -Xclang -disable-llvm-passes -S -emit-llvm $< -o $@

$(CPP_FILES_LLVM_v3): %.v3.cpp.ll:%.v1.cpp.ll
	opt -S -mem2reg -instnamer $< -o $@

$(CPP_FILES_LLVM_v4): %.v4.cpp.ll:%.v2.cpp.ll
	opt -S -mem2reg -instnamer $< -o $@

#--------further convert dot file to pdf and pgn file------
all: $(C_FILES_LLVM_v1) $(C_FILES_LLVM_v2) $(C_FILES_LLVM_v3) $(C_FILES_LLVM_v4)\
    $(CPP_FILES_LLVM_v1) $(CPP_FILES_LLVM_v2) $(CPP_FILES_LLVM_v3) $(CPP_FILES_LLVM_v4)

clean:
	rm -rf *.o *.ll
