cmake_minimum_required(VERSION 3.5)
project(calc)

OPTION(BUILD_EXAMPLES "Build library usage example apps" ON)

add_library(calc STATIC src/add.c src/subtract.c src/multiply.c)

target_include_directories(calc
    PUBLIC ${PROJECT_SOURCE_DIR}/include
)

if (BUILD_EXAMPLES)
    add_subdirectory(examples)
endif()
