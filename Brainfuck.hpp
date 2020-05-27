#pragma once
#include <string>

using Code = std::string;
using Input = std::string;

struct Brainfuck final {
  std::string interpret(Code const &code, Input const &input) const;
  std::string compile(Code const &code) const;

  Brainfuck() = default;
  Brainfuck(Brainfuck const &) = delete;
  Brainfuck &operator=(Brainfuck const &) = delete;
};
