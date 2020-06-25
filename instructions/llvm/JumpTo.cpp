#include "JumpTo.hpp"

namespace instructions::llvm {
JumpTo::JumpTo(LabelPtr label) : label{label} {}

std::string JumpTo::Execute() { return "br label " + label->GetName() + "\n"; }

} // namespace instructions::llvm