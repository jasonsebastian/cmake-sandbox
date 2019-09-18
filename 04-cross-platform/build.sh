if [ -d "build" ]; then
    rm -rf build
fi

mkdir build && cd build

build_for_android() {
    for arch in armeabi-v7a arm64-v8a x86 x86_64; do
        mkdir $arch
        pushd $arch
        cmake ../.. -DCMAKE_SYSTEM_NAME=Android \
            -DCMAKE_ANDROID_ARCH_ABI=$arch \
            -DCMAKE_ANDROID_STL_TYPE=c++_static
        cmake --build .
        popd
    done
}

build_for_macos() {
    cmake .. -DCMAKE_SYSTEM_NAME=Darwin
    cmake --build .
}

build_for_android