#pragma once
#include <string>

using Code = std::string;

struct Brainfuck final {
  std::string compile(Code const &code) const;

  Brainfuck() = default;
  Brainfuck(Brainfuck const &) = delete;
  Brainfuck &operator=(Brainfuck const &) = delete;
};
