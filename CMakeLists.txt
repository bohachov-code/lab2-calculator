cmake_minimum_required(VERSION 3.10)
project(Calculator C)

include_directories(include)

add_library(calculator STATIC src/calculator.c)
add_executable(calculator_app src/main.c)
target_link_libraries(calculator_app calculator)

set_target_properties(calculator PROPERTIES
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib")
set_target_properties(calculator_app PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin")
