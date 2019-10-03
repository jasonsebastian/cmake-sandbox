cmake_minimum_required(VERSION 3.5)
project(calc)

add_library(calc SHARED src/add.c src/subtract.c)
target_include_directories(calc
    PUBLIC ${PROJECT_SOURCE_DIR}/include)

install(TARGETS calc
        LIBRARY DESTINATION distribution/ios)