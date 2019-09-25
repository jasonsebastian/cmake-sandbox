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

build_for_ios() {
    clean
    cd build
    PLATFORM="iPhoneSimulator"
    cmake .. -GXcode \
        -DCMAKE_SYSTEM_NAME=iOS \
        -DCMAKE_OSX_SYSROOT="/Applications/Xcode.app/Contents/Developer/Platforms/${PLATFORM}.platform/Developer/SDKs/${PLATFORM}.sdk" \
        "-DCMAKE_OSX_ARCHITECTURES=armv7;arm64;x86_64" \
        -DCMAKE_OSX_DEPLOYMENT_TARGET=11.4 \
        -DCMAKE_IOS_INSTALL_COMBINED=YES
    cmake --build .
}

if [ $# -eq 0 ]; then
    echo "Usage: ./build.sh <compile_target>"
else
    case $1 in
    ios)
        build_for_ios
        ;;
    *)
        echo "Compile target not recognized"
        ;;
    esac
fi
