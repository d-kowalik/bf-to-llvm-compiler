#pragma once

#include "Variable.hpp"

namespace variables {
class LLVMVariable : public Variable {
  static int internal_counter;

public:
  LLVMVariable(std::string type, std::string name);
};
} // namespace variables