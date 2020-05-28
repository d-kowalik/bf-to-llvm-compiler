#pragma once

#include "LLVMInstruction.hpp"

namespace instructions::llvm {
class CallPutchar : public LLVMInstruction {
  LLVMVariable arg;

public:
  CallPutchar(LLVMVariable arg);

  std::string Execute() override;
};
} // namespace instructions::llvm