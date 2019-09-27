clean() {
    rm -rf ios/libs/include
    rm -f ios/libs/conan_imports_manifest.txt
    rm -f ios/libs/conan.lock
    rm -f ios/libs/conanbuildinfo.txt
    rm -f ios/libs/conaninfo.txt
    rm -f ios/libs/graph_info.json
    rm -f ios/libs/libcalc.dylib
}

clean
conan export native jason/dev
cd ios/libs
conan install . -s os=iOS --build missing
