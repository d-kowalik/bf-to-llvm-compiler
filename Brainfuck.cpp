#include "Brainfuck.hpp"
#include "Memory.hpp"

#include <iostream>
#include <sstream>
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

const std::string HEADER =
    "target triple = \"x86_64-pc-linux-gnu\"\n"
    "@tape = private unnamed_addr global [2000 x i8] zeroinitializer\n"
    "declare i8 @getchar() nounwind\n"
    "declare i8 @putchar(i8) nounwind\n"
    "define i32 @main() {\n"
    "%tape_ptr = alloca i8*\n"
    "%ptr = getelementptr [2000 x i8], [2000 x i8]* @tape, i64 0, i64 1000\n"
    "store i8* %ptr, i8** %tape_ptr\n";

const std::string FOOTER = "ret i32 0\n"
                           "}";

std::string Brainfuck::compile(Code const &code) const {
  std::stringstream ss;
  ss << HEADER;
  int unused_symbol = 1;
  int unused_loop_symbol = 0;
  std::stack<int> brackets;

  for (size_t i = 0; i < code.size(); i++) {
    char c = code[i];
    switch (c) {
    case '.':
      ss << "%" << unused_symbol << " = load i8*, i8** %tape_ptr\n";
      ss << "%" << (unused_symbol + 1) << " = load i8, i8* %" << unused_symbol
         << "\n";
      ss << "call i8 @putchar(i8 %" << (unused_symbol + 1) << ")\n";
      unused_symbol += 3; // due to call returning a value
      break;
    case ',':
      ss << "%" << unused_symbol << " = load i8*, i8** %tape_ptr\n";
      ss << "%" << (unused_symbol + 1) << " = call i8 @getchar()\n";
      ss << "store i8 %" << (unused_symbol + 1) << ", i8* %" << unused_symbol
         << ", align 1\n";
      unused_symbol += 2;
      break;
    case '+':
      ss << "%" << unused_symbol << " = load i8*, i8** %tape_ptr\n";
      ss << "%" << (unused_symbol + 1) << " = load i8, i8* %" << unused_symbol
         << "\n";
      ss << "%" << (unused_symbol + 2) << " = add i8 %" << (unused_symbol + 1)
         << ", 1\n";
      ss << "store i8 %" << (unused_symbol + 2) << ", i8* %" << unused_symbol
         << ", align 1\n";
      unused_symbol += 3;
      break;
    case '-':
      ss << "%" << unused_symbol << " = load i8*, i8** %tape_ptr\n";
      ss << "%" << (unused_symbol + 1) << " = load i8, i8* %" << unused_symbol
         << "\n";
      ss << "%" << (unused_symbol + 2) << " = sub i8 %" << (unused_symbol + 1)
         << ", 1\n";
      ss << "store i8 %" << (unused_symbol + 2) << ", i8* %" << unused_symbol
         << ", align 1\n";
      unused_symbol += 3;
      break;
    case '>':
      ss << "%" << unused_symbol << " = load i8*, i8** %tape_ptr\n";
      ss << "%" << (unused_symbol + 1) << " = ptrtoint i8* %" << unused_symbol
         << " to i64\n";
      ss << "%" << (unused_symbol + 2) << " = add i64 %" << (unused_symbol + 1)
         << ", 1\n";
      ss << "%" << (unused_symbol + 3) << " = inttoptr i64 %"
         << (unused_symbol + 2) << " to i8*\n";
      ss << "store i8* %" << (unused_symbol + 3) << ", i8** %tape_ptr\n";
      unused_symbol += 4;
      break;
    case '<':
      ss << "%" << unused_symbol << " = load i8*, i8** %tape_ptr\n";
      ss << "%" << (unused_symbol + 1) << " = ptrtoint i8* %" << unused_symbol
         << " to i64\n";
      ss << "%" << (unused_symbol + 2) << " = sub i64 %" << (unused_symbol + 1)
         << ", 1\n";
      ss << "%" << (unused_symbol + 3) << " = inttoptr i64 %"
         << (unused_symbol + 2) << " to i8*\n";
      ss << "store i8* %" << (unused_symbol + 3) << ", i8** %tape_ptr\n";
      unused_symbol += 4;
      break;
    case '[':
      ss << "br label %for" << unused_loop_symbol << ".body\n";
      ss << "for" << unused_loop_symbol << ".body:\n";
      brackets.push(unused_loop_symbol);
      ss << "%" << unused_symbol << " = load i8*, i8** %tape_ptr\n";
      ss << "%" << (unused_symbol + 1) << " = load i8, i8* %" << unused_symbol
         << "\n";
      ss << "%" << (unused_symbol + 2) << " = icmp eq i8 %"
         << (unused_symbol + 1) << ", 0\n";
      ss << "br i1 %" << (unused_symbol + 2) << ", label %for"
         << unused_loop_symbol << ".end, label %for" << unused_loop_symbol
         << ".positive\n";
      ss << "for" << unused_loop_symbol << ".positive:\n";
      unused_loop_symbol += 1;
      unused_symbol += 3;
      break;
    case ']':
      ss << "br label %for" << brackets.top() << ".body\n";
      ss << "for" << brackets.top() << ".end:\n";
      brackets.pop();
      break;
    default:
      break;
    }
  }

  ss << FOOTER;
  return ss.str();
}
