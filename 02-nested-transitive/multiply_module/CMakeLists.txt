cmake_minimum_required (VERSION 3.5)

# Set the project name
project (multiply_module)

add_subdirectory(add_submodule)


# Add a library with the above sources
add_library(${PROJECT_NAME} src/multiply.cpp)

target_include_directories( ${PROJECT_NAME}
    PUBLIC ${PROJECT_SOURCE_DIR}/include
)

target_link_libraries(${PROJECT_NAME}
    add_submodule
)

add_dependencies(multiply_module add_submodule)