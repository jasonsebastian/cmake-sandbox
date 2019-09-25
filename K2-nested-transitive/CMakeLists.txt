cmake_minimum_required (VERSION 3.5)

project(root_project)

# Add sub directories
add_subdirectory(subtract_module)
add_subdirectory(multiply_module)
add_subdirectory(main_module)

add_dependencies(main_module multiply_module)
add_dependencies(main_module subtract_module)
