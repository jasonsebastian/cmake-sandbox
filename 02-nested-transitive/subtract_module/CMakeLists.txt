# Set the project name
project (subtract_module)

# Add a library with the above sources
add_library(${PROJECT_NAME} src/subtract.cpp)

target_include_directories( ${PROJECT_NAME}
    PUBLIC ${PROJECT_SOURCE_DIR}/include
)