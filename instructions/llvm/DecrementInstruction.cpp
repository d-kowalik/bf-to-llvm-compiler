#include "IncrementInstruction.hpp"

#include <sstream>

using namespace variables;

namespace instructions::llvm {

std::string IncrementInstruction::Execute() {
  std::stringstream ss;
  ss << destination->GetName();
  ss << " = add ";
  ss << LLVMVariable::TypeToString(destination->GetType());
  ss << " ";
  ss << source->GetName();
  ss << ", 1\n";
  return ss.str();
}

} // namespace instructions::llvm