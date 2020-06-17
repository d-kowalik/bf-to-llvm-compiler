#pragma once

#include <string>

namespace instructions {
struct Instruction {
  using VariablePtr = std::shared_ptr<vars::LLVMVariable>;

  virtual std::string Execute() = 0;
};
} // namespace instructions