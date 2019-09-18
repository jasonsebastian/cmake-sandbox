if [ -d "build" ]; then
    rm -rf build
fi

build_for_macos() {
    mkdir build && cd build
    cmake -DBUILD_EXAMPLE_MACOS=ON ..
    cmake --build .
}

build_for_macos
