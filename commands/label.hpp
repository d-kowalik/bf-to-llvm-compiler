#pragma once

#include <string>

std::string label_for(int for_id, std::string label_type) {
  return "for" + std::to_string(for_id) + "." + label_type + ":\n";
}

std::string jump_to_for(int for_id, std::string label_type) {
  return "br label %for" + std::to_string(for_id) + "." + label_type + "\n";
}

std::string is_equal_to(int destination_name, std::string type, int source_name,
                        int value) {
  return "%" + std::to_string(destination_name) + " = icmp eq " + type + " %" +
         std::to_string(source_name) + ", " + std::to_string(value) + "\n";
}

std::string jump_if_for(int condition, int for_id, std::string if_true,
                        std::string if_false) {
  return "br i1 %" + std::to_string(condition) + ", label %for" +
         std::to_string(for_id) + "." + if_true + ", label %for" +
         std::to_string(for_id) + "." + if_false + "\n";
}
