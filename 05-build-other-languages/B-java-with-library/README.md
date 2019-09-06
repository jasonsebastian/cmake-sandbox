# 05/B-java-with-library

```
.
├── CMakeLists.txt
├── add_module
│   ├── Add.java
│   └── CMakeLists.txt
└── main_module
    ├── CMakeLists.txt
    └── HelloWorld.java
```

The key highlight here is to have the `main_module` [cmake file](main_module/CMakeLists.txt) `add_jar` command to be
``` cmake
add_jar(main_module HelloWorld.java 
    ENTRY_POINT main_module.HelloWorld
    INCLUDE_JARS ${CMAKE_BINARY_DIR}/bin/add_module.jar
    OUTPUT_DIR ${CMAKE_BINARY_DIR}/bin
)
```
The `INCLUDE_JARS` there means what is the dependency of the `main_module` package and `OUTPUT_DIR` is where to put the `jar` file. This means that we also have the `OUTPUT_DIR` set in the `add_module` [cmake file](add_module/CMakeLists.txt)
``` cmake
add_jar(add_module Add.java
    OUTPUT_DIR ${CMAKE_BINARY_DIR}/bin
)
```

To run the `HelloWorld` class (surely after the build), we can do
``` shell
cd build/bin
java -cp add_module.jar:main_module.jar main_module.HelloWorld
```
