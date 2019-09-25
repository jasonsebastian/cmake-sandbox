project(add_library)

include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup()

add_library(add_library add_core.c)

target_include_directories( add_library
    PUBLIC ${PROJECT_SOURCE_DIR}/include
)
