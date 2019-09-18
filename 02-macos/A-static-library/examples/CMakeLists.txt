add_library(calc-lib STATIC IMPORTED)
set_target_properties(calc-lib PROPERTIES
    IMPORTED_LOCATION ${PROJECT_BINARY_DIR}/libcalc.a
)

add_executable(calculator calculator.c)
target_link_libraries(calculator calc-lib)
target_include_directories(calculator PUBLIC ${PROJECT_SOURCE_DIR}/include)
