#pragma once

#include <string>

std::string load(std::string destination_name, std::string type,
                 std::string source_name) {
  return "%" + destination_name + " = load " + type + ", " + type + "* %" +
         source_name + "\n";
}

std::string load(int destination_name, std::string type,
                 std::string source_name) {
  return load(std::to_string(destination_name), type, source_name);
}

std::string load(std::string destination_name, std::string type,
                 int source_name) {
  return load(destination_name, type, std::to_string(source_name));
}

std::string load(int destination_name, std::string type, int source_name) {
  return load(std::to_string(destination_name), type,
              std::to_string(source_name));
}