#include "LoadInstruction.hpp"

namespace instructions::llvm {
LoadInstruction(LLVMVariable destination, LLVMVariable source)
    : destination{destination}, source{source} {}

std::string Execute() override {
  std::stringstream ss;
  ss << destination.GetName();
  ss << " = load ";
  ss << destination.GetType();
  ss << ", ";
  ss << source.GetType();
  ss << source.GetName();
  return ss.str();
}
} // namespace instructions::llvm