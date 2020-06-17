#pragma once

#include "../../variables/LLVMVariable.hpp"
#include "LLVMInstruction.hpp"

#include <memory>
#include <sstream>

namespace vars = variables;

namespace instructions::llvm {

class LoadInstruction : public LLVMInstruction {
  VariablePtr destination, source;

public:
  LoadInstruction(VariablePtr destination, VariablePtr source);

  std::string Execute() override;
};
} // namespace instructions::llvm