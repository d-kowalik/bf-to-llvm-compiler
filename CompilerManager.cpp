#include "CompilerManager.hpp"

#include <iostream>

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

CompilerManager::CompilerManager(const std::string &code,
                                 std::shared_ptr<Compiler> compiler)
    : code{code}, compiler{compiler} {}

std::string CompilerManager::Compile() {
  for (char c : code) {
    switch (c) {
    case '.':
      compiler->HandlePrint();
      break;
    case ',':
      compiler->HandleRead();
      break;
    case '+':
      compiler->HandleIncrement();
      break;
    case '-':
      compiler->HandleDecrement();
      break;
    case '>':
      compiler->HandleMoveRight();
      break;
    case '<':
      compiler->HandleMoveLeft();
      break;
    case '[':
      compiler->HandleLoopBegin();
      break;
    case ']':
      compiler->HandleLoopEnd();
      break;
    default:
      break;
    }
  }

  return HEADER + compiler->Compile() + FOOTER;
}
