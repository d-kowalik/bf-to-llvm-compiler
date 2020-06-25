#include "CallGetchar.hpp"

#include <sstream>

namespace instructions::llvm {

CallGetchar::CallGetchar(VariablePtr destination) : destination{destination} {}

std::string CallGetchar::Execute() {
  std::stringstream ss;
  ss << destination->GetName();
  ss << " = call i8 @getchar()\n";
  return ss.str();
}

} // namespace instructions::llvm