#pragma once

#include <string>

std::string call_putchar(int source_name) {
  return "call i8 @putchar(i8 %" + std::to_string(source_name) + ")\n";
}

std::string call_getchar(int destination_name) {
  return "%" + std::to_string(destination_name) + " = call i8 @getchar()\n";
}