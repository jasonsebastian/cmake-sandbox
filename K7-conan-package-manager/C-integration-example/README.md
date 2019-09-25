# C-integration-example

The aim of the integration example is to show that it is possible to manage core library of a native modbile project with conan package manager.

This shall be the structure of the project
``` yaml
root:
- library_name/:
    - src/
    - include/
    CMakeLists.txt
- distributions/:
    - some/configuration/path:
        - library_file
- conanfile.py # conan file for 'library_name'
```

The library shall:
- [ ] require one source dependency
- [ ] require a prebuilt-binary package