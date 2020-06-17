#pragma once

#include "Types.hpp"

#include <string>

namespace variables {
class Variable {
protected:
  Type type;
  std::string name;

  Variable(){};

public:
  Type GetType() const { return type; }

  std::string GetName() const { return name; }
};
} // namespace variables