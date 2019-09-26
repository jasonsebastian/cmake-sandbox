cmake_minimum_required(VERSION 2.6)

PROJECT(cmocka-hello-tests)

ENABLE_TESTING()

ADD_DEFINITIONS(-Wall -Werror --std=gnu99 -Wmissing-declarations)

SET(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/../build/modules")

SET(SOURCES
	../src/calc.c
	test-sum.c
)

ADD_EXECUTABLE(test-sum ${SOURCES})

FIND_PACKAGE(CMOCKA REQUIRED)
INCLUDE_DIRECTORIES(${LIBCMOCKA_INCLUDE_DIR})
TARGET_LINK_LIBRARIES(test-sum ${LIBCMOCKA_LIBRARIES})

ADD_TEST(NAME test-sum COMMAND test-sum)
set_tests_properties(test-sum
		PROPERTIES
		PASS_REGULAR_EXPRESSION "Test passed")
set_tests_properties(test-sum
		PROPERTIES
		FAIL_REGULAR_EXPRESSION "(Exception|Test failed)")
set_tests_properties(test-sum
		PROPERTIES
		TIMEOUT 120)
