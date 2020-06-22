#include "LLVMCountedVariable.hpp"

namespace variables {

int LLVMCountedVariable::internal_counter = 1;

LLVMCountedVariable::LLVMCountedVariable(Type type)
    : LLVMVariable(type, std::to_string(internal_counter++)) {}

} // namespace variables