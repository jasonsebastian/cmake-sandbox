clean() {
    if [ -d "build" ]; then
        rm -rf build
    fi
}

build_for_android() {
    clean
    mkdir build && cd build
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
    clean
    mkdir build && cd build
    cmake .. -DCMAKE_SYSTEM_NAME=Darwin
    cmake --build .
}

build_for_linux() {
    clean
    mkdir build && cd build
    cmake .. -DCMAKE_SYSTEM_NAME=Linux \
        -DCMAKE_SYSTEM_PROCESSOR=arm
    cmake --build .
}

if [ $# -eq 0 ]; then
    echo "Usage: ./build.sh <compile_target>"
else
    case $1 in
    android)
        build_for_android
        ;;
    macos)
        build_for_macos
        ;;
    linux)
        build_for_linux
        ;;
    *)
        echo "Compile target not recognized"
        ;;
    esac
fi
