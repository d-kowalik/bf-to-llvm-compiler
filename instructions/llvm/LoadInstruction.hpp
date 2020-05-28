#pragma once

#include "LLVMInstruction.hpp"

#include <sstream>

namespace instructions::llvm {

class LoadInstruction : public LLVMInstruction {
  LLVMVariable destination, source;

public:
  LoadInstruction(LLVMVariable destination, LLVMVariable source);

  std::string Execute() override;
};
} // namespace instructions::llvm