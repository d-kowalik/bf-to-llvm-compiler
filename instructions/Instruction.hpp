#pragma once

#include <string>

struct Instruction {
  virtual std::string Execute() = 0;
};