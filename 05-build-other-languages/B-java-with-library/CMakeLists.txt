cmake_minimum_required(VERSION 3.0)

project(root_project)

add_subdirectory(main_module)
add_subdirectory(add_module)

add_dependencies(main_module add_module)