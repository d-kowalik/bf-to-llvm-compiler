#pragma once

#include "AssignInstruction.hpp"

namespace instructions::llvm
{

  class CompareInstruction : public AssignInstruction
  {
    int value;

  public:
    CompareInstruction(VariablePtr destination, VariablePtr source, int value);

    std::string Execute() override;
  };

} // namespace instructions::llvm
