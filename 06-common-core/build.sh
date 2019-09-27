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
conan create native jason/dev -s os=iOS -s os.version=11.4
cd ios/libs
pwd
conan install . --build missing -s os=iOS -s os.version=11.4
