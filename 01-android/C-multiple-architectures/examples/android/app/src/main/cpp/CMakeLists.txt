cmake_minimum_required(VERSION 3.4.1)

set(root_DIR ${CMAKE_CURRENT_LIST_DIR}/../../../../../..)

add_library(calc-lib STATIC IMPORTED)
set_target_properties(calc-lib PROPERTIES IMPORTED_LOCATION
        ${root_DIR}/build/${ANDROID_ABI}/libcalc.a)

add_library(native-lib SHARED native-lib.cpp)

target_include_directories(native-lib PRIVATE ${root_DIR}/include)
target_link_libraries(native-lib calc-lib)