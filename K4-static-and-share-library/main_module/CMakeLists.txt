cmake_minimum_required (VERSION 3.5)

project(main_module)

add_executable(${PROJECT_NAME} main.cpp)

target_link_libraries(${PROJECT_NAME} PRIVATE
    subtract_module
    add_module
)
