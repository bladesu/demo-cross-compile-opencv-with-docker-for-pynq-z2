#! /bin/bash

# build links to target platform
source files/base_info

mkdir -p ${MOUNTED_ROOT}
sshfs ${TARGET_ADDR}:/ ${MOUNTED_ROOT} -o transform_symlinks -o allow_other
# link target to build platform
ln -s ${MOUNTED_ROOT}/usr/lib/${LIB_NAME} /usr/lib/${LIB_NAME}
ln -s ${MOUNTED_ROOT}/lib/${LIB_NAME} /lib/${LIB_NAME}
ln -s ${MOUNTED_ROOT}/usr/share/${LIB_NAME} /usr/share/${LIB_NAME}
ln -s ${MOUNTED_ROOT}/usr/include/${LIB_NAME} /usr/include/${LIB_NAME}

