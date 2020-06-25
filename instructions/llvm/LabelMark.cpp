#include "LabelMark.hpp"

namespace instructions::llvm {
LabelMark::LabelMark(LabelPtr label) : label{label} {}

std::string LabelMark::Execute() { return label->GetName().substr(1) + ":\n"; }

} // namespace instructions::llvm