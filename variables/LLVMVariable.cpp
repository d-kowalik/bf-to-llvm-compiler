#include "LLVMVariable.hpp"

namespace variables {
int LLVMVariable::internal_counter = 1;

LLVMVariable::LLVMVariable(std::string type, std::string name) {
  this->type = type;
  this->name = "%" + name;
}

} // namespace variables