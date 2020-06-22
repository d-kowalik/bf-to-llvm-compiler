#pragma once

#include "LLVMVariable.hpp"

namespace variables {
class LLVMCountedVariable : public LLVMVariable {
public:
  static int internal_counter;

  LLVMCountedVariable(Type type);
};
} // namespace variables