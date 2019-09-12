add_library(csubtract SHARED src/csubtract.c)

set(distribution_DIR ${CMAKE_CURRENT_SOURCE_DIR}/../../../../../distribution)

# Specify output location of shared library
set_target_properties(csubtract
        PROPERTIES
        LIBRARY_OUTPUT_DIRECTORY
        "${distribution_DIR}/csubtract/lib/${ANDROID_ABI}")

# Move header files to distribution_DIR
add_custom_command(TARGET csubtract POST_BUILD
        COMMAND "${CMAKE_COMMAND}" -E
        copy "${CMAKE_CURRENT_SOURCE_DIR}/src/csubtract.h"
        "${distribution_DIR}/csubtract/include/csubtract.h")
