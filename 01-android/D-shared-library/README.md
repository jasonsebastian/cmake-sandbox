# Shared library

This project compiles source code to shared library.

If `GENERATE_ANDROID_LIBRARY` option is switched on, `cmake` will move the generated shared library to `examples/android/app/libs/`. That is, `build/` folder will only serve as a temporary folder.

Current project structure:

```bash
├── build/
│   ├── arm64-v8a/
│   ├── armeabi-v7a/
│   ├── x86/
│   └── x86_64/
├── examples/
│   └── android/
│       └── app/
│           ├── libs/
│           │   ├── arm64-v8a/
│           │   ├── armeabi-v7a/
│           │   ├── x86/
│           │   └── x86_64/
│           └-- build.gradle 
├── include/
├── src/
└── CMakeLists.txt
```