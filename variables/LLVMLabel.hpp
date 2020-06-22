#pragma once

#include "LLVMVariable.hpp"

#include <string>

namespace variables
{
  class LLVMLabel : public LLVMVariable
  {
  public:
    LLVMLabel(std::string name);
  };
} // namespace variables