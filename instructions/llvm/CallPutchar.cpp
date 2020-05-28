#include "CallPutchar.hpp"

namespace instructions::llvm {
CallPutchar::CallPutchar(LLVMVariable arg) : arg{arg} {}

std::string CallPutchar::Execute() override {
  std::stringstream ss;
  ss << "call i8 @putchar(";
  ss << arg.GetType();
  ss << " ";
  ss << arg.GetName();
  ss << ")\n";
  return ss.str();
}
} // namespace instructions::llvm