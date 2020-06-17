#pragma once

#include "../../variables/LLVMVariable.hpp"
#include "LLVMInstruction.hpp"

#include <sstream>

namespace vars = variables;

namespace instructions::llvm {

class LoadInstruction : public LLVMInstruction {
  vars::LLVMVariable destination, source;

public:
  LoadInstruction(vars::LLVMVariable destination, vars::LLVMVariable source);

  std::string Execute() override;
};
} // namespace instructions::llvm