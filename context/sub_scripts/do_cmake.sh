#ref: https://docs.opencv.org/2.4/doc/tutorials/introduction/crosscompilation/arm_crosscompile_with_cmake.html
# library pkg-config
export PKG_CONFIG_SYSROOT_DIR=${MOUNTED_ROOT}
export PKG_CONFIG_PATH=/usr/lib/${LIB_NAME}/pkgconfig
target=opencv-3.4.10
tfile=/build/${target}/platforms/linux/arm-gnueabi.toolchain.cmake
script="cmake -DCMAKE_TOOLCHAIN_FILE=${tfile} -DCMAKE_BUILD_TYPE=RELEASE -DCMAKE_INSTALL_PREFIX=/opt/${target}/ -DWITH_GTK=TRUE -DCMAKE_HOST_SYSTEM_NAME=docker /build/${target}/ 2>&1 | tee cmake.log"

echo $script
eval $script
