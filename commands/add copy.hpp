#pragma once

#include <sstream>
#include <string>

std::string add(int destination_name, std::string type, int source_name,
                int value) {
  std::stringstream ss;
  ss << "%" << destination_name << " = add " << type << " %" << source_name
     << ", " << value << "\n";
  return ss.str();
}
