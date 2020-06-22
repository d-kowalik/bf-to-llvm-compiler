#include "PtrToInt.hpp"

using namespace variables;

namespace instructions::llvm {

std::string PtrToInt::Execute() {
  std::stringstream ss;
  ss << destination->GetName();
  ss << " = ptrtoint ";
  ss << LLVMVariable::TypeToString(source->GetType());
  ss << " ";
  ss << source->GetName();
  ss << " to ";
  ss << LLVMVariable::TypeToString(destination->GetType());
  ss << "\n";
  return ss.str();
}
} // namespace instructions::llvm