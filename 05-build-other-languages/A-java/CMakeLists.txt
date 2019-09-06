cmake_minimum_required (VERSION 3.0)

find_package(Java REQUIRED)
include(UseJava)

project (HelloWorld NONE)

set(CMAKE_JAVA_COMPILE_FLAGS "-source" "1.8" "-target" "1.8")

add_jar(HelloWorld HelloWorld.java ENTRY_POINT HelloWorld)