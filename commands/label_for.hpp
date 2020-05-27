#pragma once

#include <string>

std::string label_for(int for_id, std::string label_type) {
  return "for" + std::to_string(for_id) + "." + label_type + ":\n";
}
