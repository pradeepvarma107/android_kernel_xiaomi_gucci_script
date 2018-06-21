#building custom kernel using xiaomi official source 

cd

#Tool chain
#git clone https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/arm/arm-eabi-4.7
git clone https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8

#git clone https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9

#exporting path and cross compiler

export PATH=$(pwd)/arm-eabi-4.8/bin:$PATH

export CROSS_COMPILE=$(pwd)/arm-eabi-4.8/bin/arm-eabi-

#creating an output directory

mkdir out

#cloning xiaomi offical kernel

git clone https://github.com/pradeepvarma107/android_kernel_xiaomi_gucci.git -b cm-11.0

#Changing directory to kernel directory

cd android_kernel_xiaomi_gucci

#Compiling kernel

make ARCH=arm O=../out mrproper

make ARCH=arm O=../out gucci_defconfig

make ARCH=arm O=../out -j4

#the final zimage (Compiled Kernel) will be in home/out/arc/arm/boot/

