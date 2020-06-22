# Brainfuck to LLVM compiler

To compile:
`mkdir build && cd build && cmake .. && make`

Executable will be created in build/bin.

To easily run compiled code:
`./build/bin/bf_compiler.out | clang -o test.out -x ir -`
