cmake_minimum_required (VERSION 3.0)

find_package(Java REQUIRED)
include(UseJava)

project (add_module NONE)

set(CMAKE_JAVA_COMPILE_FLAGS "-source" "1.8" "-target" "1.8")

add_jar(add_module Add.java
    OUTPUT_DIR ${CMAKE_BINARY_DIR}/bin
)