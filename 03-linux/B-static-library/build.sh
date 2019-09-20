if [ -d "build" ]; then
    rm -rf build
fi

mkdir build && cd build

build_for_linux() {
    cmake .. -DCMAKE_SYSTEM_NAME=Linux \
        -DCMAKE_SYSTEM_PROCESSOR=arm
    cmake --build .
}

build_for_linux
