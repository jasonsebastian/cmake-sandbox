cmake_minimum_required(VERSION 2.6)
PROJECT(cmocka-hello)

include(CTest)

ADD_DEFINITIONS(-Wall -Werror --std=gnu99 -Wmissing-declarations)

SET(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/build/modules")

SET(SOURCES
	src/calc.c
	src/main.c
)

ADD_EXECUTABLE(main-calc ${SOURCES})

FIND_PACKAGE(CMOCKA REQUIRED)
ADD_SUBDIRECTORY(tests)

INSTALL(TARGETS main-calc RUNTIME DESTINATION bin)
