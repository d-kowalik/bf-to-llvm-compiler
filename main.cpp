#include <iostream>

#include "CompilerManager.hpp"
#include "LLVMCompiler.hpp"

int main()
{
  std::stringstream ss;
  std::string line;
  while (std::getline(std::cin, line))
    ss << line;

  CompilerManager manager{ss.str(), std::make_shared<LLVMCompiler>()};
  auto compiled = manager.Compile();
  std::cout << compiled << std::endl;

  return 0;
}