add_library(cadd STATIC src/cadd.c)

set(distribution_DIR ${CMAKE_CURRENT_SOURCE_DIR}/../../../../../distribution)

# Specify output location for static library
set_target_properties(cadd
        PROPERTIES
        ARCHIVE_OUTPUT_DIRECTORY
        "${distribution_DIR}/cadd/lib/${ANDROID_ABI}")

# Move header files to distribution_DIR
add_custom_command(TARGET cadd POST_BUILD
        COMMAND "${CMAKE_COMMAND}" -E
        copy "${CMAKE_CURRENT_SOURCE_DIR}/src/cadd.h"
        "${distribution_DIR}/cadd/include/cadd.h")
