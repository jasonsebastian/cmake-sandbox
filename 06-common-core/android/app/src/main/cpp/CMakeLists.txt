cmake_minimum_required(VERSION 3.4.1)

set(distribution_DIR ${CMAKE_CURRENT_LIST_DIR}/../../../libs/)
set(include_DIR ${distribution_DIR}/include)

if(${ANDROID_ABI} STREQUAL "armeabi-v7a")
    set(conan_arch armv7)
elseif(${ANDROID_ABI} STREQUAL "arm64-v8a")
    set(conan_arch armv8)
else()
    set(conan_arch ${ANDROID_ABI})
endif()

execute_process(
    COMMAND conan install . -s os=Android -s os.api_level=23 -s arch=${conan_arch} -o calc:shared=True --build missing
    WORKING_DIRECTORY ${distribution_DIR}
)

add_library(calc-lib SHARED IMPORTED)
set_target_properties(calc-lib PROPERTIES IMPORTED_LOCATION
        ${distribution_DIR}/${ANDROID_ABI}/libcalc.so)

add_library(native-lib SHARED native-lib.cpp)

target_include_directories(native-lib PRIVATE ${include_DIR})
target_link_libraries(native-lib calc-lib)