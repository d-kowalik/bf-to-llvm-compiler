#pragma once

#include "../../variables/LLVMLabel.hpp"
#include "LLVMInstruction.hpp"


#include <memory>

namespace instructions::llvm {
class LabelMark : public LLVMInstruction {
  using LabelPtr = std::shared_ptr<variables::LLVMLabel>;
  LabelPtr label;

public:
  LabelMark(LabelPtr label);

  std::string Execute() override;
};
} // namespace instructions::llvm