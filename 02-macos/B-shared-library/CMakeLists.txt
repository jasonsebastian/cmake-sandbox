cmake_minimum_required(VERSION 3.5)
project(calc)

OPTION(BUILD_EXAMPLE_MACOS "Build library usage example apps" OFF)

set(distribution_DIR ${PROJECT_SOURCE_DIR}/distribution)

add_library(calc SHARED src/add.c src/subtract.c src/multiply.c)

target_include_directories(calc
    PUBLIC ${PROJECT_SOURCE_DIR}/include
)

if (BUILD_EXAMPLE_MACOS)
    set(CMAKE_C_COMPILER    clang)
    set(CMAKE_CXX_COMPILER  clang++)
    set_target_properties(calc
        PROPERTIES
        LIBRARY_OUTPUT_DIRECTORY ${distribution_DIR}/macos)
    add_subdirectory(examples)
endif()
