cmake_minimum_required (VERSION 3.5)

project (subtract_module)

add_library(${PROJECT_NAME} SHARED src/subtract.cpp)

target_include_directories( ${PROJECT_NAME}
    PUBLIC ${PROJECT_SOURCE_DIR}/include
)