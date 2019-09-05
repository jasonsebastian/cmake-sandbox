# 03-import-from-faraway

So how if our project is here but the source is somewhere else? For example:
```
.
├── another
│   └── random
│       └── library
│           └── add_module
│               ├── CMakeLists.txt
│               ├── include
│               │   └── add.h
│               └── src
│                   └── add.cpp
└── some
    └── nested
        └── project
            └── main_module
                ├── CMakeLists.txt
                └── main.cpp
```
Because `add_subdirectory`, the command that we usually use only works for, well subdirectories, we can't use it here since the `add_module` is not a subdirectory of `main_module`. So we must use `include` instead. But there is some drawback here.

There is no scoping of the variable, basically it's very similar as copy and pasting the content of the library [cmake file](`./another/random/library/add_module/CMakeLists.txt`) to the [project file](`./some/nested/project/main_module/CMakeLists.txt`). Thus, we can no more rely on the relative path in the library cmake file because the current directory is the project directory. What we can do is to use `${CMAKE_CURRENT_LIST_DIR}` which will point to the directory of the cmake file being read/parsed, which is the library directory which is what we want. So this is okay.

Another thing is that because we are doing `include` instead of `add_subdirectory`, there will be only one `Makefile` generated for the `main_module`.
```
.
├── another
│   └── random
│       └── library
│           └── add_module
│               ├── CMakeLists.txt
│               ├── include
│               │   └── add.h
│               └── src
│                   └── add.cpp
└── some
    └── nested
        └── project
            └── main_module
                ├── CMakeLists.txt
                ├── build
                │   ├── CMakeCache.txt
                │   ├── CMakeFiles
                │   ├── Makefile
                │   └── cmake_install.cmake
                └── main.cpp
```
thus we can't build `add_module` without building `main_module`.