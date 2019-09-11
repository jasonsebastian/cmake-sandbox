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
    URL "https://github.com/ruslo/hunter/archive/v0.23.214.tar.gz"
    SHA1 "e14bc153a7f16d6a5eeec845fb0283c8fad8c358"
)

project (add_module)

# need to unset proxy because the proxy will redirect to authentication for http access, 
#   and the proxy is actually not needed for localhost
set(ENV{http_proxy} "")

hunter_add_package(half)
find_package(half CONFIG REQUIRED)
add_executable(foo main.cpp)
target_link_libraries(foo half::half)
