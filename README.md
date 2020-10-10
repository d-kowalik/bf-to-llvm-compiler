# Brainfuck to LLVM-IR compiler

Generates LLVM IR (assembly) and optionally the final compiled program.

## Usage

```bash
$ make compiler
g++ -Wall -Wextra -std=c++17 main.cpp Brainfuck.cpp -o compiler
$ ./compiler
.+,[Ctrl+D]
target triple = "x86_64-pc-linux-gnu"
@tape = private unnamed_addr global [2000 x i8] zeroinitializer
declare i8 @getchar() nounwind
declare i8 @putchar(i8) nounwind
define i32 @main() {
%tape_ptr = alloca i8*
%ptr = getelementptr [2000 x i8], [2000 x i8]* @tape, i64 0, i64 1000
store i8* %ptr, i8** %tape_ptr
%1 = load i8*, i8** %tape_ptr
%2 = call i8 @getchar()
store i8 %2, i8* %1
%3 = load i8*, i8** %tape_ptr
%4 = load i8, i8* %3
%5 = add i8 %4, 1
store i8 %5, i8* %3
%6 = load i8*, i8** %tape_ptr
%7 = load i8, i8* %6
call i8 @putchar(i8 %7)
ret i32 0
}
$ make program
./compiler | clang -o program -x ir -
,+.[Ctrl+D]
$ ./program
a[Enter]
b
```

## Authors

Authors:

- [Damian Kowalik](https://github.com/d-kowalik)
- [Paweł Zmarzły](https://github.com/pzmarzly)

Licensed MIT.
