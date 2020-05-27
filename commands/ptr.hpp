#pragma once

#include <string>

std::string inttoptr(std::string source_name, std::string destination_name) {
  return "%" + destination_name + " = inttoptr i64 %" + source_name +
         " to i8*\n";
}

std::string inttoptr(int source_name, int destination_name) {
  return inttoptr(std::to_string(source_name),
                  std::to_string(destination_name));
}
