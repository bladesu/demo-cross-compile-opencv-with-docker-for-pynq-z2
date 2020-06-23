#! /bin/bash
source files/base_info
opencv_dir=${DIR_BUILD}/${OPENCV_SRC}
build_dir=${opencv_dir}/build/

mkdir -p ${build_dir}
cp ${DIR_SCRIPT}/do_cmake.sh ${build_dir}
cd ${build_dir}
bash ./do_cmake.sh

