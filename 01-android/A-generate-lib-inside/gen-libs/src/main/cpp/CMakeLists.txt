# cmake_minimum_required must be present
# cmake version depends on NDK toolchain installed on local machine
cmake_minimum_required(VERSION 3.6.0)

set(lib_src_DIR ${CMAKE_CURRENT_SOURCE_DIR})

# Create tmp directory to dump the configured build files
set(lib_build_DIR $ENV{HOME}/tmp)
file(MAKE_DIRECTORY ${lib_build_DIR})

add_subdirectory(${lib_src_DIR}/cadd ${lib_build_DIR}/cadd)
add_subdirectory(${lib_src_DIR}/csubtract ${lib_build_DIR}/csubtract)
