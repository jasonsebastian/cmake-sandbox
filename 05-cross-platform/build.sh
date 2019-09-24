clean() {
    if [ -d "build" ]; then
        rm -rf build
    fi
    mkdir build
    if [ -d "distribution" ]; then
        rm -rf distribution
    fi
    mkdir distribution
}

build_for_android() {
    clean
    cd build
    for ARCH in armeabi-v7a arm64-v8a x86 x86_64; do
        mkdir $ARCH
        pushd $ARCH
        cmake ../.. -DCMAKE_SYSTEM_NAME=Android \
            -DCMAKE_ANDROID_ARCH_ABI=$ARCH \
            -DCMAKE_ANDROID_STL_TYPE=c++_static
        cmake --build .
        popd
    done
}

build_for_macos() {
    clean
    cd build
    cmake .. -DCMAKE_SYSTEM_NAME=Darwin
    cmake --build .
}

build_for_linux() {
    clean
    cd build
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
