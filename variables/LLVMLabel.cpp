#include "LLVMLabel.hpp"

#include "Types.hpp"

namespace variables {
LLVMLabel::LLVMLabel(std::string name) : LLVMVariable(Type::Label, name) {}
} // namespace variables