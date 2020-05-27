#pragma once

#include <string>

std::string label_for(int for_id, std::string label_type) {
  return "for" + std::to_string(for_id) + "." + label_type + ":\n";
}

std::string jump_to_for(int for_id, std::string label_type) {
  return "br label %for" + std::to_string(for_id) + "." + label_type + "\n";
}

std::string jump_if_for(int condition, int for_id, std::string if_true,
                        std::string if_false) {
  return "br i1 %" + std::to_string(condition) + ", label %for" +
         std::to_string(for_id) + "." + if_true + ", label %for" +
         std::to_string(for_id) + "." + if_false + "\n";
}
