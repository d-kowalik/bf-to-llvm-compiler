g++ -std=c++17 main.cpp Brainfuck.cpp -Wall -Wextra -Wpedantic
clang -o test.out test.ll -fsanitize=address

./a.out | clang -o test.out -x ir -
