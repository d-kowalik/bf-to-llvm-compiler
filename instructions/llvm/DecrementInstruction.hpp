#pragma once

#include "AssignInstruction.hpp"

namespace instructions::llvm {

class DecrementInstruction : public AssignInstruction {
  using AssignInstruction::AssignInstruction;

public:
  std::string Execute() override;
};

} // namespace instructions::llvm