#include "../Brainfuck.hpp"
#include <iostream>
#include <sstream>

int main() {
  std::stringstream ss;
  std::string line;
  while (std::getline(std::cin, line))
    ss << line;

  Brainfuck bf{};
  auto compiled = bf.compile(ss.str());
  std::cout << compiled << std::endl;

  return 0;
}