#include "LLVMForLabel.hpp"

namespace variables {

int LLVMForLabel::counter = 0;

LLVMForLabel::LLVMForLabel(const std::string &name)
    : LLVMLabel("for" + std::to_string(counter++) + "." + name + ":") {}

} // namespace variables