default: program

compiler: main.cpp Brainfuck.cpp Brainfuck.hpp
	g++ -Wall -Wextra -std=c++17 main.cpp Brainfuck.cpp -o compiler

program: compiler
	./compiler | clang -o program -x ir -
