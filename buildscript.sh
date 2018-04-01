#building custom kernel using xiaomi official source 

1.cd

#Tool chain

2.git clone https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8

#exporting path and cross compiler

3.export PATH=$(pwd)/arm-eabi-4.8/bin:$PATH

4.export CROSS_COMPILE=$(pwd)/arm-eabi-4.8/bin/arm-eabi-

#creating an output directory

5.mkdir out

#cloning xiaomi offical kernel

6.git clone https://github.com/MiCode/Xiaomi_Kernel_OpenSource.git -b gucci-kk-oss

#Changing directory to kernel directory

7.cd Xiaomi_Kernel_OpenSource-gucci-kk-oss

#Compiling kernel

8.make ARCH=arm O=../out mrproper

9.make ARCH=arm O=../out gucci_defconfig

10.make ARCH=arm O=../out -j4

#the final zimage (Compiled Kernel) will be in home/out/arc/arm/boot/

