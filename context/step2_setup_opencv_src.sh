#! /bin/bash
source files/base_info

opencv_src_zip=${DIR_FILES}/${OPENCV_SRC}.zip
prepared=${DIR_FILES}/arm-gnueabi.toolchain.cmake
original=${DIR_BUILD}/${OPENCV_SRC}/platforms/linux/arm-gnueabi.toolchain.cmake


mkdir ${opencv_src}
unzip ${opencv_src_zip} -d ${DIR_BUILD}
cat ${original} >> ${prepared}
mv ${original} ${original}.bak
mv ${prepared} ${original}
