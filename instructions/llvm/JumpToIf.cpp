#include "JumpToIf.hpp"

#include <sstream>

namespace instructions::llvm {
JumpToIf::JumpToIf(VariablePtr condition, LabelPtr labelTrue,
                   LabelPtr labelFalse)
    : condition{condition}, labelTrue{labelTrue}, labelFalse{labelFalse} {}

std::string JumpToIf::Execute() {
  std::stringstream ss;
  ss << "br i1 ";
  ss << condition->GetName();
  ss << ", label ";
  ss << labelTrue->GetName();
  ss << ", label ";
  ss << labelFalse->GetName();
  ss << "\n";
  return ss.str();
};

} // namespace instructions::llvm