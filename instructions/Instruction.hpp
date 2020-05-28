#pragma once

#include <string>

namespace instructions {
struct Instruction {
  virtual std::string Execute() = 0;
};
} // namespace instructions