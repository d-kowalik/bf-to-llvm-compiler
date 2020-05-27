#pragma once

#include <string>

std::string inttoptr(std::string destination_name, std::string source_name) {
  return "%" + destination_name + " = inttoptr i64 %" + source_name +
         " to i8*\n";
}

std::string inttoptr(int destination_name, int source_name) {
  return inttoptr(std::to_string(destination_name),
                  std::to_string(source_name));
}

std::string ptrtoint(std::string destination_name, std::string source_name) {
  return "%" + destination_name + " = ptrtoint i8* %" + source_name +
         " to i64\n";
}

std::string ptrtoint(int destination_name, int source_name) {
  return ptrtoint(std::to_string(destination_name),
                  std::to_string(source_name));
}