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
    cmake .. -GXcode \
        -DCMAKE_SYSTEM_NAME=iOS \
        "-DCMAKE_OSX_ARCHITECTURES=armv7;armv7s;arm64;i386;x86_64" \
        -DCMAKE_INSTALL_PREFIX=.. \
        -DCMAKE_OSX_DEPLOYMENT_TARGET=10.5 \
        -DCMAKE_XCODE_ATTRIBUTE_ONLY_ACTIVE_ARCH=NO \
        -DCMAKE_IOS_INSTALL_COMBINED=YES
    cmake --build . --config Release --target install
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
