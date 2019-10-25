```
.
├── dist
│   ├── android
│   │   ├── arm64-v8a
│   │   │   └── libkeystore.a
│   │   ├── armeabi-v7a
│   │   │   └── libkeystore.a
│   │   ├── include
│   │   │   ├── keystore.h
│   │   │   ├── ksdatahelper.h
│   │   │   ├── ksdatatypes.h
│   │   │   └── ksstatus.h
│   │   ├── x86
│   │   │   └── libkeystore.a
│   │   └── x86_64
│   │       └── libkeystore.a
│   ├── ios
│   │   ├── include
│   │   │   ├── keystore.h
│   │   │   ├── ksdatahelper.h
│   │   │   ├── ksdatatypes.h
│   │   │   └── ksstatus.h
│   │   └── libkeystore.a
│   ├── linux
│   │   ├── arm32
│   │   │   └── libkeystore.a
│   │   ├── arm64
│   │   │   └── libkeystore.a
│   │   ├── include
│   │   │   ├── keystore.h
│   │   │   ├── ksdatahelper.h
│   │   │   ├── ksdatatypes.h
│   │   │   └── ksstatus.h
│   │   ├── x86
│   │   │   └── libkeystore.a
│   │   └── x86_64
│   │       └── libkeystore.a
│   ├── osx
│   │   ├── include
│   │   │   ├── keystore.h
│   │   │   ├── ksdatahelper.h
│   │   │   ├── ksdatatypes.h
│   │   │   └── ksstatus.h
│   │   └── libkeystore.a
│   └── uwp
│       ├── debug
│       │   ├── ARM
│       │   │   └── libkeystore.lib
│       │   ├── ARM64
│       │   │   └── libkeystore.lib
│       │   ├── Win32
│       │   │   └── libkeystore.lib
│       │   └── x64
│       │       └── libkeystore.lib
│       ├── include
│       │   ├── keystore.h
│       │   ├── ksdatahelper.h
│       │   ├── ksdatatypes.h
│       │   └── ksstatus.h
│       └── release
│           ├── ARM
│           │   └── libkeystore.lib
│           ├── ARM64
│           │   └── libkeystore.lib
│           ├── Win32
│           │   └── libkeystore.lib
│           └── x64
│               └── libkeystore.lib
├── src
│   ├── common
│   │   ├── cryptowrapper.h
│   │   ├── ksdatahelper.c
│   │   ├── ksdatahelper.h
│   │   ├── ksdatatypes.h
│   │   ├── ksmacros.h
│   │   ├── ksrandomgenerator.c
│   │   ├── ksrandomgenerator.h
│   │   ├── ksstatus.h
│   │   ├── msglog.c
│   │   ├── msglog.h
│   │   └── opensslwrapper.c
│   ├── keychain
│   │   ├── AuthContext.h
│   │   ├── AuthContext.m
│   │   └── keystore.c
│   ├── keystore_soft
│   │   ├── keystore.c
│   │   ├── spkeystoredatatype.h
│   │   ├── spkeystoreentry.c
│   │   ├── spkeystoreentry.h
│   │   ├── spkeystorefile.c
│   │   ├── spkeystorefile.h
│   │   ├── spkeystoreheader.c
│   │   ├── spkeystoreheader.h
│   │   ├── spkeystorehelper.c
│   │   ├── spkeystorehelper.h
│   │   ├── spkeystorewrapper.c
│   │   └── spkeystorewrapper.h
│   ├── CMakeLists.txt
│   └── keystore.h
├── tests
│   ├── common_test
│   │   ├── kdffeedbackmode_nocounter_test.c
│   │   ├── ksdatahelper_test.c
│   │   ├── ksrandomgenerator_test.c
│   │   └── opensslwrapper_test.c
│   ├── keystore_soft_test
│   │   ├── spkeystoreentry_test.c
│   │   ├── spkeystorefile_test.c
│   │   ├── spkeystoreheader_test.c
│   │   └── spkeystorewrapper_test.c
│   ├── performance_test
│   │   ├── keystore_test_performance.c
│   │   └── keystore_test_performance.h
│   ├── thread_test
│   │   ├── keystore_test_pthread.c
│   │   ├── keystore_test_pthread.h
│   │   ├── keystore_thread_helper.c
│   │   └── keystore_thread_helper.h
│   ├── CMakeLists.txt
│   ├── keystore_test.c
│   ├── keystore_tests_header.h
│   ├── main_cmocka.c
│   ├── util.c
│   └── util.h
├── vta
│   ├── android
│   │   ├── app
│   │   │   ├── build
│   │   │   │   ├── generated
│   │   │   │   ├── intermediates
│   │   │   │   ├── outputs
│   │   │   │   └── tmp
│   │   │   └── src
│   │   │       ├── androidTest
│   │   │       │   └── java
│   │   │       │       └── com
│   │   │       │           └── example
│   │   │       │               └── sampleapp
│   │   │       │                   └── ExampleInstrumentedTest.java
│   │   │       ├── main
│   │   │       │   ├── java
│   │   │       │   │   └── com
│   │   │       │   │       └── example
│   │   │       │   │           └── sampleapp
│   │   │       │   │               └── MainActivity.java
│   │   │       │   ├── res
│   │   │       │   └── AndroidManifest.xml
│   │   │       └── test
│   │   │           └── java
│   │   │               └── com
│   │   │                   └── example
│   │   │                       └── sampleapp
│   │   │                           └── ExampleUnitTest.java
│   │   ├── build.gradle
│   │   ├── gradlew.bat
│   │   ├── gradlew
│   │   └── settings.gradle
│   ├── ios
│   │   ├── ios
│   │   │   ├── AppDelegate.h
│   │   │   ├── AppDelegate.m
│   │   │   ├── Assets.xcassets
│   │   │   ├── Base.lproj
│   │   │   │   └── Main.storyboard
│   │   │   ├── Info.plist
│   │   │   ├── SceneDelegate.h
│   │   │   ├── SceneDelegate.m
│   │   │   ├── ViewController.h
│   │   │   ├── ViewController.m
│   │   │   └── main.m
│   │   └── ios.xcodeproj
│   │       ├── project.pbxproj
│   │       ├── project.xcworkspace
│   │       └── xcuserdata
│   ├── linux
│   └── osx
├── tools
│   ├── cmocka
│   └── llvm
├── build.sh
└── CMakeLists.txt
```
