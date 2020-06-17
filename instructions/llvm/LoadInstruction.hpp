#pragma once

#include "../../variables/LLVMVariable.hpp"
#include "AssignInstruction.hpp"

#include <memory>
#include <sstream>

namespace vars = variables;

namespace instructions::llvm {

class LoadInstruction : public AssignInstruction {
  using AssignInstruction::AssignInstruction;

public:
  std::string Execute() override;
};

} // namespace instructions::llvm