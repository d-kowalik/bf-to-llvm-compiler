#pragma once

#include "Variable.hpp"

namespace variables {
class LLVMVariable : public Variable {
public:
  LLVMVariable(Type type, std::string name);
};
} // namespace variables