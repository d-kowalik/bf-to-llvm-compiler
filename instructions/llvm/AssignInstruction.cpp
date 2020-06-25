#include "AssignInstruction.hpp"

namespace instructions::llvm {
AssignInstruction::AssignInstruction(VariablePtr destination,
                                     VariablePtr source)
    : destination{destination}, source{source} {}

} // namespace instructions::llvm