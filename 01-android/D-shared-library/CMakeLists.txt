cmake_minimum_required(VERSION 3.5)
project(calc)

OPTION(GENERATE_LIBRARY_ANDROID     "Build library usage example Android app"        ON)

set(example_android_DIR ${PROJECT_SOURCE_DIR}/examples/android/app/libs)

add_library(calc SHARED src/add.c src/subtract.c)
target_include_directories(calc
    PUBLIC ${PROJECT_SOURCE_DIR}/include)

# Specify output location of shared library
if (GENERATE_LIBRARY_ANDROID)
    set_target_properties(calc
        PROPERTIES
        LIBRARY_OUTPUT_DIRECTORY
        "${example_android_DIR}/${CMAKE_ANDROID_ARCH_ABI}")
endif()
