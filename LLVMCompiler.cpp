#include "LLVMCompiler.hpp"

#include "instructions/llvm/CallGetchar.hpp"
#include "instructions/llvm/CallPutchar.hpp"
#include "instructions/llvm/IncrementInstruction.hpp"
#include "instructions/llvm/DecrementInstruction.hpp"
#include "instructions/llvm/LoadInstruction.hpp"
#include "instructions/llvm/StoreInstruction.hpp"
#include "instructions/llvm/PtrToInt.hpp"
#include "instructions/llvm/IntToPtr.hpp"

using namespace variables;
using namespace instructions::llvm;

void LLVMCompiler::HandlePrint()
{
  auto dereferenced_tape = std::make_shared<LLVMCountedVariable>(Type::Int8Ptr);
  auto cell_value = std::make_shared<LLVMCountedVariable>(Type::Int8);
  Emit<LoadInstruction>(dereferenced_tape, tape_ptr);
  Emit<LoadInstruction>(cell_value, dereferenced_tape);
  Emit<CallPutchar>(cell_value);
}

void LLVMCompiler::HandleRead()
{
  auto dereferenced_tape = std::make_shared<LLVMCountedVariable>(Type::Int8Ptr);
  auto input = std::make_shared<LLVMCountedVariable>(Type::Int8);
  Emit<LoadInstruction>(dereferenced_tape, tape_ptr);
  Emit<CallGetchar>(input);
  Emit<StoreInstruction>(dereferenced_tape, input);
}

void LLVMCompiler::HandleIncrement()
{
  auto dereferenced_tape = std::make_shared<LLVMCountedVariable>(Type::Int8Ptr);
  auto cell_value = std::make_shared<LLVMCountedVariable>(Type::Int8);
  auto new_cell_value = std::make_shared<LLVMCountedVariable>(Type::Int8);

  Emit<LoadInstruction>(dereferenced_tape, tape_ptr);
  Emit<LoadInstruction>(cell_value, dereferenced_tape);
  Emit<IncrementInstruction>(new_cell_value, cell_value);
  Emit<StoreInstruction>(dereferenced_tape, new_cell_value);
}

void LLVMCompiler::HandleDecrement()
{
  auto dereferenced_tape = std::make_shared<LLVMCountedVariable>(Type::Int8Ptr);
  auto cell_value = std::make_shared<LLVMCountedVariable>(Type::Int8);
  auto new_cell_value = std::make_shared<LLVMCountedVariable>(Type::Int8);

  Emit<LoadInstruction>(dereferenced_tape, tape_ptr);
  Emit<LoadInstruction>(cell_value, dereferenced_tape);
  Emit<DecrementInstruction>(new_cell_value, cell_value);
  Emit<StoreInstruction>(dereferenced_tape, new_cell_value);
}

void LLVMCompiler::HandleMoveLeft()
{
  auto dereferenced_tape = std::make_shared<LLVMCountedVariable>(Type::Int8Ptr);
  auto cell_as_int = std::make_shared<LLVMCountedVariable>(Type::Int64);
  auto new_cell_value = std::make_shared<LLVMCountedVariable>(Type::Int8);
  auto cell_value_as_ptr = std::make_shared<LLVMCountedVariable>(Type::Int8);

  Emit<LoadInstruction>(dereferenced_tape, tape_ptr);
  Emit<PtrToInt>(cell_as_int, dereferenced_tape);
  Emit<DecrementInstruction>(new_cell_value, cell_as_int);
  Emit<IntToPtr>(cell_value_as_ptr, new_cell_value);
  Emit<StoreInstruction>(cell_value_as_ptr, tape_ptr);
}

void LLVMCompiler::HandleMoveRight()
{
  auto dereferenced_tape = std::make_shared<LLVMCountedVariable>(Type::Int8Ptr);
  auto cell_as_int = std::make_shared<LLVMCountedVariable>(Type::Int64);
  auto new_cell_value = std::make_shared<LLVMCountedVariable>(Type::Int8);
  auto cell_value_as_ptr = std::make_shared<LLVMCountedVariable>(Type::Int8);

  Emit<LoadInstruction>(dereferenced_tape, tape_ptr);
  Emit<PtrToInt>(cell_as_int, dereferenced_tape);
  Emit<IncrementInstruction>(new_cell_value, cell_as_int);
  Emit<IntToPtr>(cell_value_as_ptr, new_cell_value);
  Emit<StoreInstruction>(cell_value_as_ptr, tape_ptr);
}