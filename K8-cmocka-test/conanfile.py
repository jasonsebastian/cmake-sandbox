from conans import ConanFile, CMake, tools


class CalcConan(ConanFile):
    name = "calc"
    version = "0.2.1"
    settings = "os", "compiler", "build_type", "arch"
    options = {"shared": [True, False]}
    default_options = "shared=False"
    generators = "cmake"
    exports_sources = "calc/*" 

    def build(self):
        cmake = CMake(self)
        cmake.configure(source_folder="calc")
        cmake.build()
        cmake.test()
        self.run("ctest -T memcheck")

    def package(self):
        self.copy("*.h", dst="include", src="hello")
        self.copy("*hello.lib", dst="lib", keep_path=False)
        self.copy("*.dll", dst="bin", keep_path=False)
        self.copy("*.so", dst="lib", keep_path=False)
        self.copy("*.dylib", dst="lib", keep_path=False)
        self.copy("*.a", dst="lib", keep_path=False)

    def package_info(self):
        self.cpp_info.libs = ["calc"]
     
