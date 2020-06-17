#include "LoadInstruction.hpp"

namespace instructions::llvm {

std::string LoadInstruction::Execute() {
  std::stringstream ss;
  ss << destination->GetName();
  ss << " = load ";
  ss << destination->GetType();
  ss << ", ";
  ss << source->GetType();
  ss << source->GetName();
  return ss.str();
}
} // namespace instructions::llvm