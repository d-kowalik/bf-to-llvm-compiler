#include "CompareInstruction.hpp"

#include <sstream>

namespace instructions::llvm {
CompareInstruction::CompareInstruction(VariablePtr destination,
                                       VariablePtr source, int value)
    : AssignInstruction(destination, source), value{value} {}

std::string CompareInstruction::Execute() {
  std::stringstream ss;
  ss << destination->GetName();
  ss << " = icmp eq";
  ss << destination->GetType();
  ss << " ";
  ss << source->GetName();
  ss << ", ";
  ss << value;
  ss << "\n";
  return ss.str();
};

} // namespace instructions::llvm