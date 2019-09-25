# 01-transitive-dependencies

This example is to show how the transitive dependencies work in CMake.


```
.
├── CMakeLists.txt
├── add_module
│   ├── CMakeLists.txt
│   ├── include
│   │   └── add.h
│   └── src
│       └── add.cpp
├── main_module
│   ├── CMakeLists.txt
│   └── main.cpp
├── multiply_module
│   ├── CMakeLists.txt
│   ├── include
│   │   └── multiply.h
│   └── src
│       └── multiply.cpp
└── subtract_module
    ├── CMakeLists.txt
    ├── include
    │   └── subtract.h
    └── src
        └── subtract.cpp

```

In this example, the possible dependency diagram is:
```
main_module -> add_module;
main_module -> subtract_module;
main_module -> multiply_module;
multiple_module -> add_module;
```
though `main_module -> add_module;` are not really present in this scenario (i.e., no `#include "add.h"` in the `main.cpp`).

To build using cmake, do:
``` shell
cmake -H. -Bbuild
```
the `.` next to `-H` represent that `.` (current directory) is the source dir and `build` next to `-B` represent the build directory.
And what we will get is
```
.
├── CMakeLists.txt
├── build
│   ├── CMakeCache.txt
│   ├── CMakeFiles/
│   ├── Makefile
│   ├── add_module
│   │   ├── CMakeFiles/
│   │   ├── Makefile
│   │   └── cmake_install.cmake
│   ├── cmake_install.cmake
│   ├── main_module
│   │   ├── CMakeFiles/
│   │   ├── Makefile
│   │   └── cmake_install.cmake
│   ├── multiply_module
│   │   ├── CMakeFiles/
│   │   ├── Makefile
│   │   └── cmake_install.cmake
│   └── subtract_module
│       ├── CMakeFiles/
│       ├── Makefile
│       └── cmake_install.cmake
├── add_module/
├── main_module/
├── multiply_module/
└── subtract_module/
```
Notice that we have several `Makefile`s, 
- `./build/Makefile` default target is to build every of the 4 modules. `
- `./build/add_module/Makefile` will only build `add_module`
- `./build/subtract_module/Makefile` will only build `subtract_module`
- `./build/multiply_module/Makefile` will first build `add_module` then build `multiple_module` because of the dependency.
- `./build/main_module/Makefile` will build every of the 4 modules.

GNU `make` is smart enough to not rebuild the built module, so if you want to see all the dependencies reflected in the building you can do `make clean` in the `./build` directory.