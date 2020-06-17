#pragma once

#include "LLVMInstruction.hpp"

namespace instructions::llvm {

class CallGetchar : public LLVMInstruction {
  VariablePtr destination;

public:
  CallGetchar(VariablePtr destination);

  std::string Execute() override;
};

} // namespace instructions::llvm