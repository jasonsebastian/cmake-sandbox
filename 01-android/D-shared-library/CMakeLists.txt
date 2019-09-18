cmake_minimum_required(VERSION 3.5)
project(calc)

OPTION(BUILD_FOR_ANDROID    "Build library usage example Android app"       ON)

set(distribution_DIR ${PROJECT_SOURCE_DIR}/distribution)

add_library(calc SHARED src/add.c src/subtract.c)
target_include_directories(calc
    PUBLIC ${PROJECT_SOURCE_DIR}/include)

if (BUILD_FOR_ANDROID)
    set_target_properties(calc
        PROPERTIES
        LIBRARY_OUTPUT_DIRECTORY
        "${distribution_DIR}/android/${CMAKE_ANDROID_ARCH_ABI}")
    add_subdirectory(examples)
endif()
