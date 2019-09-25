cmake_minimum_required (VERSION 3.5)

project(root_project)

add_subdirectory(add_module)
add_subdirectory(subtract_module)
add_subdirectory(main_module)

add_dependencies(main_module add_module)
add_dependencies(main_module subtract_module)
