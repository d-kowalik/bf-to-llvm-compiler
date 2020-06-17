#include "LoadInstruction.hpp"

using namespace variables;

namespace instructions::llvm {

std::string LoadInstruction::Execute() {
  std::stringstream ss;
  ss << destination->GetName();
  ss << " = load ";
  ss << LLVMVariable::TypeToString(destination->GetType());
  ss << ", ";
  ss << LLVMVariable::TypeToString(source->GetType());
  ss << source->GetName();
  return ss.str();
}
} // namespace instructions::llvm