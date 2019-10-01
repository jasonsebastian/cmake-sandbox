#!/usr/bin/env bash

clean() {
    rm -rf .cxx build
    pushd libs
    rm -rf arm64-v8a armeabi-v7a x86 x86_64 include
    rm -rf conan.lock conan_imports_manifest.txt conanbuildinfo.txt conaninfo.txt graph_info.json
    popd
}

# clean
# chmod +x gradlew
./gradlew assembleDebug assembleRelease publishToMavenLocal
