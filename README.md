# cmake-sandbox

This repository contain snapshots of project folders, for the purpose of studying how to compile C/C++ libraries for usage on different platforms (Android, iOS, MacOS, Linux, Windows).

The goal is to be able to put sample apps from different platforms under the same project folder and to standardize the structure across different projects.

## Proposed project structure

```bash
├── distribution/
│   ├── android/
│   │   ├── arm64-v8a/
│   │   ├── armeabi-v7a/
│   │   ├── x86/
│   │   └── x86_64/
│   ├── ios/
│   ├── macos/
│   ├── linux/
│   └── windows/
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
* `distribution/` contains the library files compiled to different platforms.
* `examples/` contains source code for sample app of the different platforms. Each of these sample apps will be able to link to the generated library file under `distribution/`.
* `include/` contains the header files. Sample app must include these header files in order to use the library.
* `src/` contains the source code.

## Updates so far

All projects under `01-android` will work only when using NDK whose revision is less than or equal to r18b.

I am not sure whether running `cmake -DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++` and run the generated executable is considered sufficient for MacOS requirements.
