#pragma once

#include "Variable.hpp"

namespace variables {
class LLVMVariable : public Variable {
public:
  LLVMVariable(std::string type, std::string name);
};
} // namespace variables