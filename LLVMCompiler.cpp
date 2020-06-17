#include "LLVMCompiler.hpp"

#include "instructions/llvm/CallGetchar.hpp"
#include "instructions/llvm/CallPutchar.hpp"
#include "instructions/llvm/LoadInstruction.hpp"
#include "instructions/llvm/StoreInstruction.hpp"

using namespace variables;
using namespace instructions::llvm;

void LLVMCompiler::HandlePrint() {
  auto dereferenced_tape = std::make_shared<LLVMCountedVariable>(Type::Int8Ptr);
  auto cell_value = std::make_shared<LLVMCountedVariable>(Type::Int8);
  Emit<LoadInstruction>(dereferenced_tape, tape_ptr);
  Emit<LoadInstruction>(cell_value, dereferenced_tape);
  Emit<CallPutchar>(cell_value);
}

void LLVMCompiler::HandleRead() {
  auto dereferenced_tape = std::make_shared<LLVMCountedVariable>(Type::Int8Ptr);
  auto input = std::make_shared<LLVMCountedVariable>(Type::Int8);
  Emit<LoadInstruction>(dereferenced_tape, tape_ptr);
  Emit<CallGetchar>(input);
  Emit<StoreInstruction>(input, dereferenced_tape);
}