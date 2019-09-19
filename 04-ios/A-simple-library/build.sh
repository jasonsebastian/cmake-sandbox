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