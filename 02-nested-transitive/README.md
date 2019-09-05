# 02-nested-transitive

The difference between this with [the structure in `01-transitive-dependencies`](../01-transitive-dependencies/CMakeLists.txt) is that now `main_module` cannot anymore depends on `add_module`.

Current "possible" dependency diagram
```
main_module -> subtract_module;
main_module -> multiply_module;
multiple_module -> add_module;
```
If we do `#include "add.h"` in the `main.cpp` it will result an error, this is because in the `target_link_libraries` in the [`multiply_module/CMakeLists.txt`](./multiply_module/CMakeLists.txt) we put it as `PRIVATE`, means that it cannot be accessed by others.

Notice now also that we have changed the file structure a bit such that `add_module` is completely inside the `multiply_module/libs` implying that other should not have access to this.
```
.
├── CMakeLists.txt
├── README.md
├── main_module
│   ├── CMakeLists.txt
│   └── main.cpp
├── multiply_module
│   ├── CMakeLists.txt
│   ├── include
│   │   └── multiply.h
│   ├── libs
│   │   └── add_module
│   │       ├── CMakeLists.txt
│   │       ├── include
│   │       └── src
│   └── src
│       └── multiply.cpp
└── subtract_module
    ├── CMakeLists.txt
    ├── include
    │   └── subtract.h
    └── src
        └── subtract.cpp
```

The method of building is the same and the behavior of `Makefile`s are analogous.
```
.
├── CMakeLists.txt
├── README.md
├── build
│   ├── CMakeCache.txt
│   ├── CMakeFiles
│   │   ├── 3.15.2
│   │   ├── CMakeDirectoryInformation.cmake
│   │   ├── CMakeOutput.log
│   │   ├── CMakeTmp
│   │   ├── Makefile.cmake
│   │   ├── Makefile2
│   │   ├── TargetDirectories.txt
│   │   ├── cmake.check_cache
│   │   └── progress.marks
│   ├── Makefile
│   ├── cmake_install.cmake
│   ├── main_module
│   │   ├── CMakeFiles
│   │   ├── Makefile
│   │   └── cmake_install.cmake
│   ├── multiply_module
│   │   ├── CMakeFiles
│   │   ├── Makefile
│   │   ├── cmake_install.cmake
│   │   └── libs
│   └── subtract_module
│       ├── CMakeFiles
│       ├── Makefile
│       └── cmake_install.cmake
├── main_module
│   ├── CMakeLists.txt
│   └── main.cpp
├── multiply_module
│   ├── CMakeLists.txt
│   ├── include
│   │   └── multiply.h
│   ├── libs
│   │   └── add_module
│   └── src
│       └── multiply.cpp
└── subtract_module
    ├── CMakeLists.txt
    ├── include
    │   └── subtract.h
    └── src
        └── subtract.cpp

```