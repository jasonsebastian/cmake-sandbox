cmake_minimum_required (VERSION 3.0)

find_package(Java REQUIRED)
include(UseJava)

project (main_module NONE)

set(CMAKE_JAVA_COMPILE_FLAGS "-source" "1.8" "-target" "1.8")

add_jar(main_module HelloWorld.java 
    ENTRY_POINT main_module.HelloWorld
    INCLUDE_JARS ${CMAKE_BINARY_DIR}/bin/add_module.jar
    OUTPUT_DIR ${CMAKE_BINARY_DIR}/bin
)