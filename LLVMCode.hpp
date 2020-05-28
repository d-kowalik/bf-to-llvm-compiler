#pragma once

#include "Code.hpp"

#include <memory>
#include <sstream>
#include <string>
#include <vector>

class LLVMCode : public Code {
  std::vector<std::unique_ptr<LLVMInstruction>> instructions;
  LLVMVariable tape_ptr{"i8**", "tape_ptr"};

  template <typename InstructionType, typename... Args>
  void Emit(Args... args) {
    instructions.push_back(std::make_unique<InstructionType>(args...));
  }

public:
  void HandlePrint() override {
    LLVMVariable dereferenced_tape{"i8*"};
    LLVMVariable cell_value{"i8"};
    Emit<LoadInstruction>(dereferenced_tape, tape_ptr);
    Emit<LoadInstruction>(cell_value, dereferenced_tape);
    Emit<CallPutchar>(cell_value);
  }

  virtual void HandleRead() = 0;
  virtual void HandleIncrement() = 0;
  virtual void HandleDecrement() = 0;
  virtual void HandleMoveLeft() = 0;
  virtual void HandleMoveRight() = 0;
  virtual void HandleLoopBegin() = 0;
  virtual void HandleLoopEnd() = 0;
};