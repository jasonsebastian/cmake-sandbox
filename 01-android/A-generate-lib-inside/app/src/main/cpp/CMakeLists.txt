cmake_minimum_required(VERSION 3.6.0)

set(distribution_DIR ${CMAKE_CURRENT_SOURCE_DIR}/../../../../distribution)

add_library(lib_cadd STATIC IMPORTED)
set_target_properties(lib_cadd PROPERTIES IMPORTED_LOCATION
        ${distribution_DIR}/cadd/lib/${ANDROID_ABI}/libcadd.a)

# Shared lib will also be tucked into APK and sent to target.
# Refer to app/build.gradle, jniLibs section for that purpose.
add_library(lib_csubtract SHARED IMPORTED)
set_target_properties(lib_csubtract PROPERTIES IMPORTED_LOCATION
        ${distribution_DIR}/csubtract/lib/${ANDROID_ABI}/libcsubtract.so)

# Build application's shared lib
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=gnu++11")

add_library(hello-libs SHARED hello-libs.cpp)

target_include_directories(hello-libs PRIVATE
        ${distribution_DIR}/cadd/include
        ${distribution_DIR}/csubtract/include)

target_link_libraries(hello-libs
        lib_cadd
        lib_csubtract)
