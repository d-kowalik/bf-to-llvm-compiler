#include <iostream>
#include <sstream>

void compile(std::string code)
{
  std::stringstream ss;
  ss << "#include <iostream>\n"
     << "int main() {\n"
     << "char* tape = new char[2000];\n"
     << "char* ptr = &tape[1000];\n"
     << "char val = *ptr;\n";

  for (size_t i = 0; i < code.size(); i++)
  {
    char c = code[i];
    switch (c)
    {
      break;
    case ',':
      ss << "(*ptr) = std::cin.get();\n";
      break;
    case '.':
      ss << "std::cout << (*ptr);\n";
      break;
    case '-':
      ss << "(*ptr)--;\n";
      break;
    case '+':
      ss << "(*ptr)++;\n";
      break;
    case '>':
      ss << "ptr++;\n";
      break;
    case '<':
      ss << "ptr--;\n";
      break;
    case '[':
      ss << "while (*ptr) {\n";
      break;
    case ']':
      ss << "}\n";
    default:
      break;
    }
  }
  ss << "return 0;\n";
  ss << "}\n";

  std::cout << ss.str() << std::endl;
}

// int main() {
//   std::stringstream ss;
//   std::string line;
//   while (std::getline(std::cin, line))
//     ss << line;

//   compile(ss.str());

//   return 0;
// }