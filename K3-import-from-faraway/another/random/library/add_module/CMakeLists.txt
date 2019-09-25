# Set the project name
project (add_module)

# Add a library with the above sources
add_library(${PROJECT_NAME} ${CMAKE_CURRENT_LIST_DIR}/src/add.cpp)

target_include_directories( ${PROJECT_NAME}
    PUBLIC ${CMAKE_CURRENT_LIST_DIR}/include
)
