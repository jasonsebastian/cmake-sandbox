# 05/A-java-simple

In compiling java project with CMake, we shall use [FindJava](https://cmake.org/cmake/help/v3.15/module/FindJava.html) and [UseJava](https://cmake.org/cmake/help/v3.15/module/UseJava.html).

`add_executable` [does not work with java] (https://cmake.cmake.narkive.com/vfVz40md/cmake-java-link-executable) (or also you can see [this](https://cmake.org/pipermail/cmake/2006-August/010442.html)). Instead, we can only use `add_library`. However, turns out that usage of `add_library` for java is also not recommended ([see here](https://stackoverflow.com/questions/4782345/how-do-you-configure-cmake-to-only-rebuild-changed-java-files-in-a-java-project)).