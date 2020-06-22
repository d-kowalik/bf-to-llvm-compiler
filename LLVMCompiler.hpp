#pragma once

#include "Compiler.hpp"
#include "instructions/llvm/LLVMInstruction.hpp"
#include "variables/LLVMCountedVariable.hpp"
#include "variables/LLVMVariable.hpp"

#include <memory>
#include <sstream>
#include <string>
#include <vector>
#include <stack>

class LLVMCompiler : public Compiler
{
  variables::LLVMVariable tape_ptr{variables::Type::Int8PtrPtr, "tape_ptr"};
  std::stack<std::shared_ptr<variables::LLVMLabel>> body_labels;
  std::stack<std::shared_ptr<variables::LLVMLabel>> end_labels;

  template <typename InstructionType, typename... Args>
  void Emit(Args... args)
  {
    instructions.push_back(std::make_unique<InstructionType>(args...));
  }

public:
  void HandlePrint() override;

  void HandleRead() override;

  void HandleIncrement() override;

  void HandleDecrement() override;

  void HandleMoveLeft() override;

  void HandleMoveRight() override;

  void HandleLoopBegin() override;

  void HandleLoopEnd() override;
};