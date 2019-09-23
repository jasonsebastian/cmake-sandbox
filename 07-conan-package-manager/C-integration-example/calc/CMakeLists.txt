cmake_minimum_required(VERSION 3.5)
project(calc)

set(distribution_DIR ${PROJECT_SOURCE_DIR}/../distribution)

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
elseif (CMAKE_SYSTEM_NAME STREQUAL "Linux")
    set_target_properties(calc
        PROPERTIES
        LIBRARY_OUTPUT_DIRECTORY ${distribution_DIR}/linux)
endif()