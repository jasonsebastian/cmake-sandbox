from conans import ConanFile, CMake, tools
import os

class CalcConan(ConanFile):
    name = "calc"
    version = "0.1.2"
    settings = "os", "compiler", "build_type", "arch"
    options = {"shared": [True, False]}
    default_options = "shared=False"
    generators = "cmake"
    exports_sources = "calc/*"
    android_abi = None

    def configure(self):
        if self.settings.os == 'Android':
            self.settings.compiler='clang'
            self.settings.compiler.version='7.0'
            self.settings.compiler.libcxx='c++_static'
            self.android_abi = tools.to_android_abi(self.settings.arch)

    def build(self):
        cmake = CMake(self)

        if self.settings.os == 'Android':
            print(self.android_abi)
            cmake.definitions["ANDROID_ABI"] = self.android_abi
            cmake.definitions["CMAKE_ANDROID_ARCH_ABI"] = self.android_abi
            cmake.definitions["CMAKE_ANDROID_NDK"] = "/Users/kevin/Library/Android/android-ndk-r18b/"
        elif self.settings.os == 'Linux':
            cmake.definitions["CMAKE_SYSTEM_PROCESSOR"] = "arm"
        elif self.settings.os != 'Macos':
            raise ValueError("Currently we only support build for Android, Linux, and Macos")

        cmake.configure(source_folder="calc/")
        cmake.build()

    def package(self):
        lib_path = os.path.join(str(self.settings.os), str(self.android_abi))
        self.copy("*.h", dst="include", keep_path=False)
        self.copy("*.lib", dst=lib_path, keep_path=False)
        self.copy("*.dll", dst=lib_path, keep_path=False)
        self.copy("*.so", dst=lib_path, keep_path=False)
        self.copy("*.dylib", dst=lib_path, keep_path=False)
        self.copy("*.a", dst=lib_path, keep_path=False)

    def package_info(self):
        self.cpp_info.libs = ["calc"]
