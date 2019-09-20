add_library(calc-lib STATIC IMPORTED)
set_target_properties(calc-lib PROPERTIES
    IMPORTED_LOCATION ${distribution_DIR}/linux/libcalc.a
)

add_executable(calculator calculator.c)
target_link_libraries(calculator calc-lib)
target_include_directories(calculator PUBLIC ${PROJECT_SOURCE_DIR}/include)

set_target_properties(calculator
        PROPERTIES
        RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_LIST_DIR})
