#pragma once

#include <string>

namespace variables {
class Variable {
protected:
  std::string type;
  std::string name;

  Variable(){};

public:
  std::string GetType() const { return type; }

  std::string GetName() const { return name; }
};
} // namespace variables