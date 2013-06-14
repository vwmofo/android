#!/bin/bash

#linaro cherry-picker

DIR=$(pwd)

echo
echo This will take a few minutes on the first run...
echo

cd $DIR/prebuilts/gcc/linux-x86/arm
git clone -b master https://github.com/SaberMod/android_prebuilts_gcc_linux-x86_arm_sabermod-arm-eabi-4.8 arm-eabi-4.8

cd $DIR/prebuilts/gcc/linux-x86/arm
git clone -b master https://github.com/SaberMod/android_prebuilts_gcc_linux-x86_arm_sabermod-arm-linux-androideabi-4.9 arm-linux-androideabi-4.9

cd $DIR/build
git fetch https://github.com/VigorCM/android_build 4.8-4.9 && git cherry-pick 98099bb7319e0c916cc3fa932c6fc3df8d435d26

cd $DIR/external/oprofile 
git fetch https://github.com/VigorCM/android_external_oprofile 4.8-4.9 && git cherry-pick befc593f85ac2c15d5fe7fc11ea77f7e8ffca1a1

cd $DIR/kernel/htc/vigor-3.0
git fetch https://github.com/VigorCM/vigor_aosp_kernel 4.8-4.9 && git cherry-pick f804449fe697b84ab52b113a65a4b563aaf633d5

cd $DIR/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9
git fetch https://github.com/VigorCM/SaberMod_Androideabi_4.9.git master && git cherry-pick 32f1fe199539bdb3388d253ee34cdabceaf22784

cd $DIR
./vendor/cm/get-prebuilts
. build/envsetup.sh