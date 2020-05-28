#include <iostream>
int main() {
char* tape = new char[2000];
char* ptr = &tape[1000];
char val = *ptr;
(*ptr) = std::cin.get();
ptr++;
(*ptr) = std::cin.get();
(*ptr)++;
ptr--;
std::cout << (*ptr);
ptr++;
std::cout << (*ptr);
return 0;
}

