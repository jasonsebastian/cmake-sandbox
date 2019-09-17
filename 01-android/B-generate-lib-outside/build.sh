if [ -d "build" ]; then
    rm -rf build
fi

mkdir build && cd build

# Must use NDK revision less than or equal to r18b
cmake .. -DCMAKE_SYSTEM_NAME=Android \
    -DCMAKE_ANDROID_ARCH_ABI=armeabi-v7a \
    -DCMAKE_ANDROID_STL_TYPE=c++_static

cmake --build .
