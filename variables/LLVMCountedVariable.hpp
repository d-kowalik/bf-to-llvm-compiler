#pragma once

#include "LLVMVariable.hpp"

namespace variables {
class LLVMCountedVariable : public LLVMVariable {
  static int internal_counter;

public:
  LLVMCountedVariable(std::string type);
};
} // namespace variables