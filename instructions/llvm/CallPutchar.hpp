#pragma once

#include "../../variables/LLVMVariable.hpp"
#include "LLVMInstruction.hpp"

#include <memory>

namespace instructions::llvm {
class CallPutchar : public LLVMInstruction {
  std::shared_ptr<variables::LLVMVariable> arg;

public:
  CallPutchar(std::shared_ptr<variables::LLVMVariable> arg);

  std::string Execute() override;
};
} // namespace instructions::llvm