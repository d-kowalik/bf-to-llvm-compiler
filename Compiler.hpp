#pragma once

#include <string>

class Compiler
{
protected:
  std::vector<std::unique_ptr<instructions::llvm::LLVMInstruction>>
      instructions;

public:
  virtual void HandlePrint() = 0;
  virtual void HandleRead() = 0;
  virtual void HandleIncrement() = 0;
  virtual void HandleDecrement() = 0;
  virtual void HandleMoveLeft() = 0;
  virtual void HandleMoveRight() = 0;
  virtual void HandleLoopBegin() = 0;
  virtual void HandleLoopEnd() = 0;
  virtual std::string Compile() = 0;
};