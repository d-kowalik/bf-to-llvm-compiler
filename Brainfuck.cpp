#include "Brainfuck.hpp"

#include <sstream>
#include <stack>
#include <utility>

#include "commands/add.hpp"
#include "commands/call.hpp"
#include "commands/label.hpp"
#include "commands/load.hpp"
#include "commands/ptr.hpp"
#include "commands/store.hpp"
#include "commands/sub.hpp"

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
      ss << load(unused_symbol, "i8*", "tape_ptr");
      ss << load(unused_symbol + 1, "i8", unused_symbol);
      ss << call_putchar(unused_symbol + 1);
      unused_symbol += 3;
      break;
    case ',':
      ss << load(unused_symbol, "i8*", "tape_ptr");
      ss << call_getchar(unused_symbol + 1);
      ss << store(unused_symbol + 1, "i8", unused_symbol);
      unused_symbol += 2;
      break;
    case '+':
      ss << load(unused_symbol, "i8*", "tape_ptr");
      ss << load(unused_symbol + 1, "i8", unused_symbol);
      ss << add(unused_symbol + 2, "i8", unused_symbol + 1, 1);
      ss << store(unused_symbol + 2, "i8", unused_symbol);
      unused_symbol += 3;
      break;
    case '-':
      ss << load(unused_symbol, "i8*", "tape_ptr");
      ss << load(unused_symbol + 1, "i8", unused_symbol);
      ss << sub(unused_symbol + 2, "i8", unused_symbol + 1, 1);
      ss << store(unused_symbol + 2, "i8", unused_symbol);
      unused_symbol += 3;
      break;
    case '>':
      ss << load(unused_symbol, "i8*", "tape_ptr");
      ss << ptrtoint(unused_symbol + 1, unused_symbol);
      ss << add(unused_symbol + 2, "i64", unused_symbol + 1, 1);
      ss << inttoptr(unused_symbol + 3, unused_symbol + 2);
      ss << store(unused_symbol + 3, "i8*", "tape_ptr");
      unused_symbol += 4;
      break;
    case '<':
      ss << load(unused_symbol, "i8*", "tape_ptr");
      ss << ptrtoint(unused_symbol + 1, unused_symbol);
      ss << sub(unused_symbol + 2, "i64", unused_symbol + 1, 1);
      ss << inttoptr(unused_symbol + 3, unused_symbol + 2);
      ss << store(unused_symbol + 3, "i8*", "tape_ptr");
      unused_symbol += 4;
      break;
    case '[':
      ss << jump_to_for(unused_loop_symbol, "body");
      ss << label_for(unused_loop_symbol, "body");
      ss << load(unused_symbol, "i8*", "tape_ptr");
      ss << load(unused_symbol + 1, "i8", unused_symbol);
      ss << is_equal_to(unused_symbol + 2, "i8", unused_symbol + 1, 0);
      ss << jump_if_for(unused_symbol + 2, unused_loop_symbol, "end", "inner");
      ss << label_for(unused_loop_symbol, "inner");
      brackets.push(unused_loop_symbol);
      unused_loop_symbol += 1;
      unused_symbol += 3;
      break;
    case ']':
      ss << jump_to_for(brackets.top(), "body");
      ss << label_for(brackets.top(), "end");
      brackets.pop();
      break;
    default:
      break;
    }
  }

  ss << FOOTER;
  return ss.str();
}
