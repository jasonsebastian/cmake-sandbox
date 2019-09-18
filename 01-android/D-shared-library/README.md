# Shared library

This project compiles source code to shared library that can be used by Android.

If `BUILD_FOR_ANDROID` option is switched on, `cmake` will move the generated shared library to `distribution/android/`. That is, `build/` folder will only serve as a temporary folder.

Current project structure:

```bash
├── build/
│   ├── arm64-v8a/
│   ├── armeabi-v7a/
│   ├── x86/
│   └── x86_64/
├── distribution/
│   └── android/
│       ├── arm64-v8a/
│       ├── armeabi-v7a/
│       ├── x86/
│       └── x86_64/
├── examples/
│   ├── android/
│   └── CMakeLists.txt
├── include/
├── src/
└── CMakeLists.txt
```