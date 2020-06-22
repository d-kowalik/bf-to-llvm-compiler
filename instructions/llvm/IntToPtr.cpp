#include "IntToPtr.hpp"

using namespace variables;

namespace instructions::llvm {

std::string IntToPtr::Execute() {
  std::stringstream ss;
  ss << destination->GetName();
  ss << " = inttoptr ";
  ss << LLVMVariable::TypeToString(source->GetType());
  ss << " ";
  ss << source->GetName();
  ss << " to ";
  ss << LLVMVariable::TypeToString(destination->GetType());
  ss << "\n";
  return ss.str();
}
} // namespace instructions::llvm