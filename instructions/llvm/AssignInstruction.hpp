#pragma once

#include "../../variables/LLVMVariable.hpp"
#include "LLVMInstruction.hpp"

namespace instructions::llvm {

class AssignInstruction : public LLVMInstruction {
protected:
  VariablePtr destination, source;

public:
  AssignInstruction(VariablePtr destination, VariablePtr source);
};

} // namespace instructions::llvm