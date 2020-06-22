#pragma once

#include "LLVMLabel.hpp"

namespace variables
{
  class LLVMForLabel : public LLVMLabel
  {
    static int counter;

  public:
    LLVMForLabel(const std::string &name);
  };
} // namespace variables