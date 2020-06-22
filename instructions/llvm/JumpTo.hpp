#pragma once

#include "LLVMInstruction.hpp"
#include "../../variables/LLVMLabel.hpp"

#include <memory>

namespace instructions::llvm
{
  class JumpTo : public LLVMInstruction
  {
    using LabelPtr = std::shared_ptr<variables::LLVMLabel>;
    LabelPtr label;

  public:
    JumpTo(LabelPtr label);

    std::string Execute() override;
  };
} // namespace instructions::llvm