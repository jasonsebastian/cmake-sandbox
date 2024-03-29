cmake_minimum_required(VERSION 3.5)
project(calc)

set(distribution_DIR ${PROJECT_SOURCE_DIR}/distribution)

option(BUILD_EXAMPLES   "Build example apps which uses the library"     ON)

add_library(calc SHARED src/add.c src/subtract.c)
target_include_directories(calc
    PUBLIC ${PROJECT_SOURCE_DIR}/include)

if (CMAKE_SYSTEM_NAME STREQUAL "Android")
    set_target_properties(calc
        PROPERTIES
        LIBRARY_OUTPUT_DIRECTORY ${distribution_DIR}/android/${CMAKE_ANDROID_ARCH_ABI})
elseif (CMAKE_SYSTEM_NAME STREQUAL "Darwin")
    set_target_properties(calc
        PROPERTIES
        LIBRARY_OUTPUT_DIRECTORY ${distribution_DIR}/macos)
elseif (CMAKE_SYSTEM_NAME STREQUAL "iOS")
    set_target_properties(calc
        PROPERTIES
        LIBRARY_OUTPUT_DIRECTORY ${distribution_DIR}/ios)
elseif (CMAKE_SYSTEM_NAME STREQUAL "Linux")
    set_target_properties(calc
        PROPERTIES
        LIBRARY_OUTPUT_DIRECTORY ${distribution_DIR}/linux)
endif()

if (BUILD_EXAMPLES)
    add_subdirectory(examples)
endif()
