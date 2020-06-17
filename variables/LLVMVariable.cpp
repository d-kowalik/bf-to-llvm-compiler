#include "LLVMVariable.hpp"

namespace variables {
LLVMVariable::LLVMVariable(Type type, std::string name)
    : Variable("%" + name, type) {}

} // namespace variables