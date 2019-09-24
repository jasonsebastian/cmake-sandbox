cmake_minimum_required(VERSION 3.5)
project(calc)

set(distribution_DIR ${PROJECT_SOURCE_DIR}/distribution)

add_library(calc STATIC src/add.c src/subtract.c)
target_include_directories(calc
    PUBLIC ${PROJECT_SOURCE_DIR}/include)

if (CMAKE_SYSTEM_NAME STREQUAL "iOS")
    set_target_properties(calc
        PROPERTIES
        ARCHIVE_OUTPUT_DIRECTORY ${distribution_DIR}/ios)
endif()
