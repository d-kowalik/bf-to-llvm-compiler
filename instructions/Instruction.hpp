#pragma once

#include "../variables/LLVMVariable.hpp"

#include <memory>
#include <string>

namespace instructions {
struct Instruction {
  using VariablePtr = std::shared_ptr<variables::LLVMVariable>;

  virtual std::string Execute() = 0;
};
} // namespace instructions