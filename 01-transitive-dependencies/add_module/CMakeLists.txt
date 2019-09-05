cmake_minimum_required (VERSION 3.5)

# Set the project name
project (add_module)

# Add a library with the above sources
add_library(${PROJECT_NAME} src/add.cpp)

target_include_directories( ${PROJECT_NAME}
    PUBLIC ${PROJECT_SOURCE_DIR}/include
)
