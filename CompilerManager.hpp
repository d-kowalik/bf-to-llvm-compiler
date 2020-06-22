#pragma once

#include "Compiler.hpp"

#include <memory>
#include <string>

class CompilerManager
{
  std::shared_ptr<Compiler> compiler;
  std::string code;

public:
  CompilerManager(const std::string &code, std::shared_ptr<Compiler> compiler);

  std::string Compile();
};