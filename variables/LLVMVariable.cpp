#include "LLVMVariable.hpp"

namespace variables {
LLVMVariable::LLVMVariable(std::string type, std::string name) {
  this->type = type;
  this->name = "%" + name;
}

} // namespace variables