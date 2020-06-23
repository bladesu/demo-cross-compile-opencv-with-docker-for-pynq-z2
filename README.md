Author: Blade Su

This is a project that I try to make a cross-compile environment which link to libraries of target’s platform with sshfs in a light-weight docker container. I try to compile OpenCV 3.4.10 for the the target board PYNQ-Z2 with Xilinx XC7Z020-1CLG400C SOC. In this process, it needs the dependency of library installed on the board root file system. The package management is __pkg-config__. So I link the folder of the target platform containing the .pc files, which provides information for __pkg-config__, and then run cmake to build Makefile and dependency. However, I found it has some package on the board can not be recognized for example GTK, but this approach still can provide a easier and simpler environment to build application for cross compilation with a existed target root file system. Of course, there is more general way to build that. For example, Yocto project for general target or PetaLinux for Xilinx SOC.


Requirement:
1. Preinstalled docker in your host platform
2. Connected to PYNQ-Z2 with the ethernet line, make sure host can communicate with the board.


Run building scripts for docker and Open CV source code.
In *Unix or MacOS, you can run following script one by one. It should costs more than minutes in the first run.

```shell
bash step1_build_toolchain.sh
bash step2_build_opencv_compile_env.sh
bash step3_login_to_docker.sh
```

And then, you should enter the built docker-container. You can see the console show like following command line, which __/build__ is the default work directory in the beginning.

```shell
root@17297231bfe5:/build# 
```

And then you can start working in the container. You can execute the script I prepared:

```shell
bash step1_setup_cross_platform_for_pynq.sh
bash step2_setup_opencv_src.sh
source step3_apply_source_to_me.sh
bash step4_cmake.sh
```
Or simply run __execute_all.sh__, all above shell is embedded.

```shell
bash execute_all.sh
```

In the first shell script __ step1_setup_cross_platform_for_pynq.sh__, it will ask for ssh login with PYNQ-Z2. You will need to responded with password. The default value is __xilinx__.

```shell
root@17297231bfe5:/build# bash step1_setup_cross_platform_for_pynq.sh
The authenticity of host '192.168.2.99 (192.168.2.99)' can't be established.
ECDSA key fingerprint is SHA256:3N/o1Gvnp49pB2LIUZQDIuLnXsJt9IGM8EVcLFKf3FM.
Are you sure you want to continue connecting (yes/no)? yes
xilinx@192.168.2.99's password:
```