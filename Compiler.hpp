#pragma once

#include <string>

struct Compiler {
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