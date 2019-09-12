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
    URL "https://github.com/kwinata/hunter/archive/v0.23.215.tar.gz"
    SHA1 "0a222455d7ae75f5c08cbeb773c9d831e61ba8e3"
)

project(main_module)

hunter_add_package(add_module)
find_package(add_module CONFIG REQUIRED)
add_executable(foo main.cpp)
target_link_libraries(foo add_module::add_module)