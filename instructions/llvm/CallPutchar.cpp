#include "CallPutchar.hpp"

#include <sstream>

using namespace variables;

namespace instructions::llvm {
CallPutchar::CallPutchar(std::shared_ptr<LLVMVariable> arg) : arg{arg} {}

std::string CallPutchar::Execute() {
  std::stringstream ss;
  ss << "call i8 @putchar(";
  ss << arg->GetType();
  ss << " ";
  ss << arg->GetName();
  ss << ")\n";
  return ss.str();
}
} // namespace instructions::llvm