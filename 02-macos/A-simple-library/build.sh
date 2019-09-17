if [ -d "build" ]; then
    rm -rf build
fi

mkdir build && cd build
cmake -DCMAKE_C_COMPILER=clang \
    -DCMAKE_CXX_COMPILER=clang++ ..
cmake --build .
