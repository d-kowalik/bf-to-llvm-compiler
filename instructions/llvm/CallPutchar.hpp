#pragma once

#include "../../variables/LLVMVariable.hpp"
#include "LLVMInstruction.hpp"

namespace instructions::llvm {
class CallPutchar : public LLVMInstruction {
  variables::LLVMVariable arg;

public:
  CallPutchar(variables::LLVMVariable arg);

  std::string Execute() override;
};
} // namespace instructions::llvm