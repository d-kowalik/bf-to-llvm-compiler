#include "LoadInstruction.hpp"

namespace instructions::llvm {
LoadInstruction::LoadInstruction(VariablePtr destination, VariablePtr source)
    : destination{destination}, source{source} {}

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