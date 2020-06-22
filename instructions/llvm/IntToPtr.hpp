#pragma once

#include "AssignInstruction.hpp"

#include <memory>
#include <sstream>

namespace vars = variables;

namespace instructions::llvm {

class IntToPtr : public AssignInstruction {
  using AssignInstruction::AssignInstruction;

public:
  std::string Execute() override;
};

} // namespace instructions::llvm