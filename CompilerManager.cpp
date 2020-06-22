#include "CompilerManager.hpp"

CompilerManager::CompilerManager(const std::string &code, std::shared_ptr<Compiler>)
    : code{code}, compiler{compiler} {};

std::string CompilerManager::Compile()
{
  for (char c : code)
  {
    switch (c)
    {
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

  return compiler->Compile();
}
