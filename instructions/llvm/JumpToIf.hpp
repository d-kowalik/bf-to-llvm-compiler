#pragma once

#include "LLVMInstruction.hpp"
#include "../../variables/LLVMLabel.hpp"

#include <memory>

namespace instructions::llvm
{
  class JumpToIf : public LLVMInstruction
  {
    using LabelPtr = std::shared_ptr<variables::LLVMLabel>;
    LabelPtr label;

  public:
    JumpToIf(VariablePtr condition, LabelPtr labelTrue, LabelPtr labelFalse);

    std::string Execute() override;
  };
} // namespace instructions::llvm