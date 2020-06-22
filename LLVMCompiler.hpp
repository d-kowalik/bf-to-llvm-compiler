#pragma once

#include "Compiler.hpp"
#include "instructions/llvm/LLVMInstruction.hpp"
#include "variables/LLVMCountedVariable.hpp"
#include "variables/LLVMLabel.hpp"
#include "variables/LLVMVariable.hpp"

#include <memory>
#include <sstream>
#include <stack>
#include <string>
#include <vector>

class LLVMCompiler : public Compiler {
  std::shared_ptr<variables::LLVMVariable> tape_ptr;
  std::stack<std::shared_ptr<variables::LLVMLabel>> body_labels;
  std::stack<std::shared_ptr<variables::LLVMLabel>> end_labels;

  template <typename InstructionType, typename... Args>
  void Emit(Args... args) {
    instructions.push_back(std::make_unique<InstructionType>(args...));
  }

public:
  LLVMCompiler() {
    tape_ptr = std::make_shared<variables::LLVMVariable>(
        variables::Type::Int8PtrPtr, "tape_ptr");
  }

  void HandlePrint() override;

  void HandleRead() override;

  void HandleIncrement() override;

  void HandleDecrement() override;

  void HandleMoveLeft() override;

  void HandleMoveRight() override;

  void HandleLoopBegin() override;

  void HandleLoopEnd() override;
};