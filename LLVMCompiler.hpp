#pragma once

#include "Compiler.hpp"
#include "instructions/llvm/LLVMInstruction.hpp"
#include "variables/LLVMCountedVariable.hpp"
#include "variables/LLVMVariable.hpp"

#include <memory>
#include <sstream>
#include <string>
#include <vector>

class LLVMCompiler : public Compiler {
  std::vector<std::unique_ptr<instructions::llvm::LLVMInstruction>>
      instructions;
  variables::LLVMVariable tape_ptr{variables::Type::Int8PtrPtr, "tape_ptr"};

  template <typename InstructionType, typename... Args>
  void Emit(Args... args) {
    instructions.push_back(std::make_unique<InstructionType>(args...));
  }

public:
  void HandlePrint() override;

  void HandleRead() override;

  void HandleIncrement() override;

  virtual void HandleDecrement() = 0;
  virtual void HandleMoveLeft() = 0;
  virtual void HandleMoveRight() = 0;
  virtual void HandleLoopBegin() = 0;
  virtual void HandleLoopEnd() = 0;
};