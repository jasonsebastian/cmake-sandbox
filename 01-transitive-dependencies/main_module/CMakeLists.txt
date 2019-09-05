cmake_minimum_required (VERSION 3.5)

project(main_module)

# Create the executable
add_executable(${PROJECT_NAME} main.cpp)

# This will cause the include directories for that target to be added to this project
target_link_libraries(${PROJECT_NAME} PUBLIC
    subtract_module
    multiply_module
)
