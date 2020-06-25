cmake_minimum_required(VERSION 3.10)

project(BFCompiler)
set(CMAKE_CXX_STANDARD 17)

set(LIBRARY_OUTPUT_PATH build/)
set(BINARY_OUTPUT_PATH build/)
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/bin)
set(CMAKE_CXX_FLAGS "-Wall -Wextra -Wpedantic -Werror")

# SRC
AUX_SOURCE_DIRECTORY(variables VARIABLES) 
AUX_SOURCE_DIRECTORY(instructions INSTRUCTIONS) 
AUX_SOURCE_DIRECTORY(instructions/llvm LLVM_INSTRUCTIONS)

add_executable(bf_compiler "main.cpp" "LLVMCompiler.cpp" "CompilerManager.cpp" ${VARIABLES} ${INSTRUCTIONS} ${LLVM_INSTRUCTIONS})
