#pragma once

#include <string>

std::string store(std::string source_name, std::string type,
                  std::string destination_name) {
  return "store " + type + " %" + source_name + ", " + type + "* %" +
         destination_name + "\n";
}

std::string store(int source_name, std::string type,
                  std::string destination_name) {
  return store(std::to_string(source_name), type, destination_name);
}

std::string store(std::string source_name, std::string type,
                  int destination_name) {
  return store(source_name, type, std::to_string(destination_name));
}

std::string store(int source_name, std::string type, int destination_name) {
  return store(std::to_string(source_name), type,
               std::to_string(destination_name));
}