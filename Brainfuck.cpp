#include "Brainfuck.hpp"
#include "Memory.hpp"

#include <iostream>
#include <stack>
#include <utility>

std::string Brainfuck::interpret(Code const &code, Input const &input) const {
  Memory memory;
  std::string result;
  size_t input_index = 0;
  std::stack<size_t> brackets{};

  for (size_t i = 0; i < code.size(); i++) {
    char c = code[i];
    switch (c) {
    case '.':
      result += memory.get();
      break;
    case ',':
      memory.set(input[input_index++]);
      break;
    case '+':
      memory.increment();
      break;
    case '-':
      memory.decrement();
      break;
    case '>':
      memory.moveRight();
      break;
    case '<':
      memory.moveLeft();
      break;
    case '[':
      if (!memory.get()) {
        int open_bracket_count = 1;
        for (size_t j = i + 1; j < code.size(); j++) {
          if (code[j] == '[') {
            open_bracket_count++;
          } else if (code[j] == ']') {
            open_bracket_count--;
            if (open_bracket_count == 0) {
              i = j;
              break;
            }
          }
        }
      } else {
        brackets.push(i);
      }
      break;
    case ']':
      if (memory.get()) {
        i = brackets.top();
      } else {
        brackets.pop();
      }
      break;
    default:
      break;
    }
  }

  return result;
}
