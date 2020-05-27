default: program
.PHONY: program

files := $(wildcard *.hpp) $(wildcard *.cpp) $(wildcard commands/*.hpp)

compiler: $(files)
	g++ -Wall -Wextra -std=c++17 main.cpp Brainfuck.cpp -o compiler

program: compiler
	./compiler | clang -o program -x ir -
