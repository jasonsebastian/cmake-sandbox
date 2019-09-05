# Set the project name
project (add_submodule)

# Add a library with the above sources
add_library(${PROJECT_NAME} src/add.cpp)

target_include_directories( ${PROJECT_NAME}
    PUBLIC ${PROJECT_SOURCE_DIR}/include
)
