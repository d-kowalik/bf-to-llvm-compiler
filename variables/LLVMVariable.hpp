#pragma once

#include "Variable.hpp"

namespace variables {
class LLVMVariable : public Variable {
public:
  LLVMVariable(Type type, std::string name);

  static std::string TypeToString(Type type);
};
} // namespace variables