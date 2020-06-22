#include "LabelMark.hpp"

namespace instructions::llvm {
LabelMark::LabelMark(LabelPtr label) : label{label} {}

std::string LabelMark::Execute() { return label->GetName() + "\n"; };

} // namespace instructions::llvm