#pragma once

#include "Types.hpp"

#include <string>

namespace variables {
class Variable {
protected:
  std::string name;
  Type type;

  Variable(const std::string &name, Type type) : name{name}, type{type} {};

public:
  Type GetType() const { return type; }

  std::string GetName() const { return name; }
};
} // namespace variables