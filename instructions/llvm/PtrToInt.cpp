#include "PtrToInt.hpp"

using namespace variables;

namespace instructions::llvm {

std::string PtrToInt::Execute() {
  std::stringstream ss;
  ss << destination->GetName();
  ss << " = ptrtoint ";
  ss << LLVMVariable::TypeToString(source->GetType());
  ss << source->GetName();
  ss << " to ";
  ss << LLVMVariable::TypeToString(destination->GetType());
  return ss.str();
}
} // namespace instructions::llvm