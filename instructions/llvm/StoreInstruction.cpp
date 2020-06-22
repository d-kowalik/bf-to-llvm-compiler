#include "StoreInstruction.hpp"

#include "../../variables/LLVMVariable.hpp"

#include <sstream>

using namespace variables;

namespace instructions::llvm {

std::string StoreInstruction::Execute() {
  std::stringstream ss;
  ss << "store ";
  ss << LLVMVariable::TypeToString(source->GetType());
  ss << " ";
  ss << source->GetName();
  ss << ", ";
  ss << LLVMVariable::TypeToString(destination->GetType());
  ss << " ";
  ss << destination->GetName();
  ss << "\n";
  return ss.str();
}

} // namespace instructions::llvm