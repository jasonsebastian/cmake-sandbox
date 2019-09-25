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

build_for_ios() {
    clean
    cd build
    PLATFORM="iPhoneSimulator"
    cmake .. -GXcode \
        -DCMAKE_SYSTEM_NAME=iOS \
        -DCMAKE_OSX_SYSROOT="/Applications/Xcode.app/Contents/Developer/Platforms/${PLATFORM}.platform/Developer/SDKs/${PLATFORM}.sdk" \
        "-DCMAKE_OSX_ARCHITECTURES=armv7;armv7s;arm64;x86_64" \
        -DCMAKE_OSX_DEPLOYMENT_TARGET=11.4 \
        -DCMAKE_IOS_INSTALL_COMBINED=YES
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
    ios)
        build_for_ios
        ;;
    *)
        echo "Compile target not recognized"
        ;;
    esac
fi
