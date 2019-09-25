cmake_minimum_required (VERSION 3.5)

set(
    HUNTER_CACHE_SERVERS
    $ENV{CACHE_REPOSITORY_URL}
    CACHE
    STRING
    "Hunter cache servers"
)

set(
    HUNTER_USE_CACHE_SERVERS
    $ENV{USE_CACHE_SERVER}
    STRING
    "Use only Cache from server"
)

include("cmake/HunterGate.cmake")
HunterGate(
    URL "https://github.com/kwinata/hunter/archive/master.zip"
    SHA1 a81c5203c4e580a5a77a38a22cfa07b244ac1ff4
)

project(main_module)

hunter_add_package(dummy-cmake-project)
find_package(dummy-cmake-project CONFIG REQUIRED)
add_executable(foo main.cpp)
