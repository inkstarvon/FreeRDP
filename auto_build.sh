#!/bin/bash
rm -rf build
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr .. \
	-GNinja \
    -DCMAKE_TOOLCHAIN_FILE=<full path to toolchain.cmake> \
    -B freerdp-build \
    -S freerdp \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_SKIP_INSTALL_ALL_DEPENDENCY=ON \
    -DCMAKE_INSTALL_PREFIX=<your install path> \
    -DWITH_SERVER=ON \
    -DWITH_SAMPLE=ON \
    -DWITH_PLATFORM_SERVER=OFF \
    -DUSE_UNWIND=OFF \
    -DWITH_SWSCALE=OFF \
    -DWITH_FFMPEG=OFF \
    -DWITH_WEBVIEW=OFF

cmake --build freerdp-build

#cmake --install freerdp-build




