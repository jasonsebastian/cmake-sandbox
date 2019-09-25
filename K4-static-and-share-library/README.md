# 04-static-and-shared-library

This sandbox is to show how CMAKE can link library statically and dynamically.

In this example, the `add_module` is a static library and `subtract_module` is dynamic library.

```
build
├── CMakeCache.txt
├── CMakeFiles
│   ├── 3.15.2
│   ├── CMakeDirectoryInformation.cmake
│   ├── CMakeOutput.log
│   ├── CMakeTmp
│   ├── Makefile.cmake
│   ├── Makefile2
│   ├── TargetDirectories.txt
│   ├── cmake.check_cache
│   └── progress.marks
├── Makefile
├── add_module
│   ├── CMakeFiles
│   ├── Makefile
│   ├── cmake_install.cmake
│   └── libadd_module.a
├── cmake_install.cmake
├── main_module
│   ├── CMakeFiles
│   ├── Makefile
│   ├── cmake_install.cmake
│   └── main_module
└── subtract_module
    ├── CMakeFiles
    ├── Makefile
    ├── cmake_install.cmake
    └── libsubtract_module.dylib
```
Notice the static library `libadd_module.a` (or with `.lib` extension in Windows) and dynamic library `libsubtract_module.dylib` (`.so` in Linux and `.dll` in Windows). For more details about the difference between static and dynamic library can be read from [here](https://www.geeksforgeeks.org/static-vs-dynamic-libraries/).

## How to make it happen

To make the module static or dynamic simply done by adding the keyword `STATIC` and `SHARED` in the `add_library` command.

For example, in the `add_module` [cmake file](add_module/CMakeLists.txt)
``` cmake
cmake_minimum_required (VERSION 3.5)

project (add_module)

add_library(${PROJECT_NAME} STATIC src/add.cpp)

target_include_directories( ${PROJECT_NAME}
    PUBLIC ${PROJECT_SOURCE_DIR}/include
)
```
And in the `subtract_module` [cmake file](subtract_module/CmakeLists.txt)
``` cmake
cmake_minimum_required (VERSION 3.5)

project (subtract_module)

add_library(${PROJECT_NAME} SHARED src/subtract.cpp)

target_include_directories( ${PROJECT_NAME}
    PUBLIC ${PROJECT_SOURCE_DIR}/include
)
```