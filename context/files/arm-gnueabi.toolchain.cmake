set(ENV{PKG_CONFIG_LIBDIR} "/usr/share/arm-linux-gnueabihf/pkgconfig:/mnt/target_os/sysroot/usr/lib/pkgconfig")
set(ENV{PKG_CONFIG_PATH} "/usr/share/arm-linux-gnueabihf/pkgconfig:/mnt/target_os/sysroot/usr/lib/pkgconfig")

set(ENV{CMAKE_FIND_ROOT_PATH} "/usr/share/arm-linux-gnueabihf/pkgconfig:/mnt/target_os/sysroot/usr/lib/pkgconfig")

set(ENV{PKG_CONFIG_SYSROOT_DIR} "/mnt/target_os/sysroot/")

set(ENV{PKG_CONFIG_EXECUTABLE} "/usr/bin/arm-linux-gnueabihf-pkg-config")

set(ENV{LD_LIBRARY_PATH} "/mnt/target_os/sysroot/usr/lib")

set(ENV{C_INCLUDE_PATH} "/mnt/target_os/sysroot/usr/include")

set(ENV{CPLUS_INCLUDE_PATH} "/mnt/target_os/sysroot/usr/include")

set(ARM_LINUX_SYSROOT "/usr/arm-linux-gnueabihf" CACHE PATH "ARM cross compilation system root")

