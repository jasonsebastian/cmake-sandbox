clean() {
    if [ -d "build" ]; then
        rm -rf build
    fi
    mkdir build && cd build
}

build_for_ios() {
    clean
    cmake .. -GXcode \
        -DCMAKE_SYSTEM_NAME=iOS
    cmake --build .
}

build_for_ios
