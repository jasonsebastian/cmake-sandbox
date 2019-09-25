project(subtract_library)

include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup()

add_library(subtract_library subtract_core.c)

target_include_directories( subtract_library
    PUBLIC ${PROJECT_SOURCE_DIR}/include
)
