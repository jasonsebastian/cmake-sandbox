from conans import ConanFile, CMake, tools
import os

class CalcConan(ConanFile):
    name = "calc"
    version = "0.1.3"
    settings = "os", "compiler", "build_type", "arch"
    options = {"shared": [True, False]}
    default_options = "shared=True"
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
            if os.getenv('ANDROID_NDK_HOME', None) is None:
                raise ValueError("Please set ANDROID_NDK_HOME environment variable")
            cmake.definitions["ANDROID_ABI"] = self.android_abi
            cmake.definitions["CMAKE_ANDROID_ARCH_ABI"] = self.android_abi
            cmake.definitions["CMAKE_ANDROID_NDK"] = os.getenv('ANDROID_NDK_HOME')

        cmake.configure(source_folder="calc")
        cmake.build()

    def package(self):
        if self.settings.os == 'Android':
            lib_path = os.path.join(str(self.settings.os), str(self.android_abi))
            self.copy("*.h", dst="include", keep_path=False)
            self.copy("*.so", dst=lib_path, keep_path=False)

    def package_info(self):
        self.cpp_info.libs = ["calc"]
