# cmake-sandbox

This repository contains a snapshot of projects, for the purpose of studying how to compile C/C++ libraries for usage on different platforms (Android, iOS, MacOS, Linux, Windows).

The goal is to standardize and combine the sample apps from different platforms to be put under the same project folder.

## Proposed project structure

```bash
├── build/
├── examples/
│   ├── android/
│   ├── ios/
│   ├── macos/
│   ├── linux/
│   ├── windows/
│   └── CMakeLists.txt
├── include/
├── src/
└── CMakeLists.txt
```

Description of project structure:
* `example/` contains source code for sample app of the different platforms. Each of these sample apps will be able to link to the generated library file under `build/`.
* `include/` contains the header files. Sample app must include these header files in order to use the library.
* `src/` contains the source code.

Run the following commands
```bash
mkdir build && cd build
cmake ..
cmake --build .
```
to generate library and place it under `build/`.

## Updates so far

For Android, the ideal case is to be able to link library files generated using the top-level `CMakeLists.txt`. Instead, currently it is only possible to link library files generated from Android project with the `com.android.library` plugin (see [here](https://developer.android.com/studio/projects/android-library) for more info).

I am not sure whether running `cmake -DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++` and run the generated executable is considered sufficient for MacOS requirements.
