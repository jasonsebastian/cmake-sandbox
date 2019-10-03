# Android library

## Project structure
```
8-android-library
├── library
│   ├── native
│   │   ├── calc
│   │   │   ├── include
│   │   │   ├── src
│   │   │   └── CMakeLists.txt
│   │   └── conanfile.py
│   └── android
│       ├── libs
│       │   └── conanfile.txt
│       ├── src
│       │   └── main
│       │       ├── cpp
│       │       │   ├── CMakeLists.txt
│       │       │   └── native-lib.cpp
│       │       └── java
│       │           └── com
│       │               └── example
│       │                   └── androidlibrary
│       │                       └── Calc.java
│       └── build.gradle
└── sample
    └── android
        ├── app
        │   ├── src
        │   │   └── main
        │   │       └── java
        │   │           └── com
        │   │               └── example
        │   │                   └── calcsampleapp
        │   │                       └── MainActivity.java
        │   └── build.gradle
        └── build.gradle
```

There are three noticeable folder, each representing an individual repository.
* `library/native`: library source code in native (C/C++)
* `library/android`: additional platform-specific library implementation for Android
* `sample/android`: android sample application

## Build order

The build order is as follows:
1. Conan generates library for Android and packages the library file under `library/android/libs`.
2. Android library compiles its source code with the pre-built native library files, resulting in a `.aar` file. This archive file is stored on `~/.m2`.
3. Android sample app fetches the dependency via `mavenLocal()`.

## Commands

Navigate to `library/android`, clean existing build results and run

```
./gradlew clean assembleDebug assembleRelease publishToMavenLocal
```

After the artifacts are generated and packaged successfully, navigate to `sample/android` and run

```
./gradlew build installDebug
```