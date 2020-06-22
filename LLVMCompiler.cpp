#include "LLVMCompiler.hpp"

#include "instructions/llvm/CallGetchar.hpp"
#include "instructions/llvm/CallPutchar.hpp"
#include "instructions/llvm/CompareInstruction.hpp"
#include "instructions/llvm/DecrementInstruction.hpp"
#include "instructions/llvm/IncrementInstruction.hpp"
#include "instructions/llvm/IntToPtr.hpp"
#include "instructions/llvm/JumpTo.hpp"
#include "instructions/llvm/JumpToIf.hpp"
#include "instructions/llvm/LabelMark.hpp"
#include "instructions/llvm/LoadInstruction.hpp"
#include "instructions/llvm/PtrToInt.hpp"
#include "instructions/llvm/StoreInstruction.hpp"
#include "variables/LLVMForLabel.hpp"

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
  Emit<StoreInstruction>(dereferenced_tape, input);
}

void LLVMCompiler::HandleIncrement() {
  auto dereferenced_tape = std::make_shared<LLVMCountedVariable>(Type::Int8Ptr);
  auto cell_value = std::make_shared<LLVMCountedVariable>(Type::Int8);
  auto new_cell_value = std::make_shared<LLVMCountedVariable>(Type::Int8);

  Emit<LoadInstruction>(dereferenced_tape, tape_ptr);
  Emit<LoadInstruction>(cell_value, dereferenced_tape);
  Emit<IncrementInstruction>(new_cell_value, cell_value);
  Emit<StoreInstruction>(dereferenced_tape, new_cell_value);
}

void LLVMCompiler::HandleDecrement() {
  auto dereferenced_tape = std::make_shared<LLVMCountedVariable>(Type::Int8Ptr);
  auto cell_value = std::make_shared<LLVMCountedVariable>(Type::Int8);
  auto new_cell_value = std::make_shared<LLVMCountedVariable>(Type::Int8);

  Emit<LoadInstruction>(dereferenced_tape, tape_ptr);
  Emit<LoadInstruction>(cell_value, dereferenced_tape);
  Emit<DecrementInstruction>(new_cell_value, cell_value);
  Emit<StoreInstruction>(dereferenced_tape, new_cell_value);
}

void LLVMCompiler::HandleMoveLeft() {
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

void LLVMCompiler::HandleMoveRight() {
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

void LLVMCompiler::HandleLoopBegin() {
  auto body_label = std::make_shared<LLVMForLabel>("body");
  auto inner_label = std::make_shared<LLVMForLabel>("inner");
  auto end_label = std::make_shared<LLVMForLabel>("end");

  auto dereferenced_tape = std::make_shared<LLVMCountedVariable>(Type::Int8Ptr);
  auto cell_value = std::make_shared<LLVMCountedVariable>(Type::Int8);
  auto comparison_result = std::make_shared<LLVMCountedVariable>(Type::Int8);

  Emit<JumpTo>(body_label);
  Emit<LabelMark>(body_label);
  Emit<LoadInstruction>(dereferenced_tape, tape_ptr);
  Emit<LoadInstruction>(cell_value, dereferenced_tape);
  Emit<CompareInstruction>(comparison_result, cell_value, 0);
  Emit<JumpToIf>(comparison_result, end_label, inner_label);
  Emit<LabelMark>(inner_label);
  body_labels.push(body_label);
  end_labels.push(end_label);
}

void LLVMCompiler::HandleLoopEnd() {
  Emit<JumpTo>(body_labels.top());
  Emit<LabelMark>(end_labels.top());
  body_labels.pop();
  end_labels.pop();
}