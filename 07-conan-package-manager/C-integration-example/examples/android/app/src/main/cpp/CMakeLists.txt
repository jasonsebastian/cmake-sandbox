cmake_minimum_required(VERSION 3.4.1)

set(include_DIR ${CMAKE_CURRENT_LIST_DIR}/../../../libs/include)
set(distribution_DIR ${CMAKE_CURRENT_LIST_DIR}/../../../libs/)

add_library(calc-lib SHARED IMPORTED)
set_target_properties(calc-lib PROPERTIES IMPORTED_LOCATION
        ${distribution_DIR}/${ANDROID_ABI}/libcalc.so)

add_library(native-lib SHARED native-lib.cpp)

target_include_directories(native-lib PRIVATE ${include_DIR})
target_link_libraries(native-lib calc-lib)