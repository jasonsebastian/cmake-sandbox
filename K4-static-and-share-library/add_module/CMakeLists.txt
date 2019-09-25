cmake_minimum_required (VERSION 3.5)

project (add_module)

add_library(${PROJECT_NAME} STATIC src/add.cpp)

target_include_directories( ${PROJECT_NAME}
    PUBLIC ${PROJECT_SOURCE_DIR}/include
)
