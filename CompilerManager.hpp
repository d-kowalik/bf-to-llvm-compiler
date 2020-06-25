#pragma once

#include "Compiler.hpp"

#include <memory>
#include <string>

class CompilerManager {
  std::string code;
  std::shared_ptr<Compiler> compiler;

public:
  CompilerManager(const std::string &code, std::shared_ptr<Compiler> compiler);

  std::string Compile();
};