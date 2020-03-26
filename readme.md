example input code and their corresponding LLVM IR

Different ways to dump LLVM IR: 

v1: clang -S -emit-llvm func1.c 

v2: clang -O3 -Xclang -disable-llvm-passes -S -emit-llvm func1.c

v3: opt -S -mem2reg -instnamer code.ll -o code_before_opt.ll

LLVM IR Specification: or language reference

https://llvm.org/docs/LangRef.html
