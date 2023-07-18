#!/usr/bin/bash -x

mkdir -p build
cd build
cmake                                                                           \
    -DCMAKE_TOOLCHAIN_FILE=${ANDROID_NDK}/build/cmake/android.toolchain.cmake   \
    -DANDROID_PLATFORM=android-26                                               \
    -DANDROID_ABI=arm64-v8a                                                     \
    -DCMAKE_ANDROID_NDK_VERSION=25                                              \
    -DTFLITE_ENABLE_GPU=ON                                                      \
    -DCMAKE_BUILD_TYPE=Release                                                  \
    ..
make -j $(nproc)
