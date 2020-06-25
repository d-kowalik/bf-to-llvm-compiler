#pragma once

#include "../../variables/LLVMLabel.hpp"
#include "LLVMInstruction.hpp"

#include <memory>

namespace instructions::llvm {
class JumpToIf : public LLVMInstruction {
  using LabelPtr = std::shared_ptr<variables::LLVMLabel>;
  VariablePtr condition;
  LabelPtr labelTrue, labelFalse;

public:
  JumpToIf(VariablePtr condition, LabelPtr labelTrue, LabelPtr labelFalse);

  std::string Execute() override;
};
} // namespace instructions::llvm