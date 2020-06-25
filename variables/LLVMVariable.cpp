#include "LLVMVariable.hpp"

namespace variables {
LLVMVariable::LLVMVariable(Type type, std::string name)
    : Variable("%" + name, type) {}

std::string LLVMVariable::TypeToString(Type type) {
  switch (type) {
  case Type::Int8:
    return "i8";
  case Type::Int8Ptr:
    return "i8*";
  case Type::Int8PtrPtr:
    return "i8**";
  case Type::Int32:
    return "i32";
  case Type::Int32Ptr:
    return "i32*";
  case Type::Int32PtrPtr:
    return "i32**";
  case Type::Int64:
    return "i64";
  case Type::Int64Ptr:
    return "i64*";
  case Type::Int64PtrPtr:
    return "i64**";
  case Type::Label:
    return "label";
  }
  return "";
}

} // namespace variables