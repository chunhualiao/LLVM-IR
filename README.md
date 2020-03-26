# LLVM-IR
A set of C/C++ programs to explore LLVM IR's text dump

Install LLVM first. 

Then type:

```
make clean
make all
```

You can then investigate the .ll files for each input program. 

The makefile use four different ways to generate .ll files for each input program. So there are v1 to v4 for a .ll file. 

The four ways are:
* v1. clang -S -emit-llvm
* v2. clang -O3 -Xclang -disable-llvm-passes -S -emit-llvm
* v3. opt -S -mem2reg -instnamer  using v1's result as input
* v4. opt -S -mem2reg -instnamer  using v2's result as input
