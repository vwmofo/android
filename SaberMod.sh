#!/bin/bash

#linaro cherry-picker

DIR=$(pwd)

echo
echo
echo This will take a few minutes on the first run...
echo This will download up to 2GB on the first run...
echo
echo

cd $DIR/prebuilts/gcc/linux-x86/arm
git clone -b master https://github.com/SaberMod/android_prebuilts_gcc_linux-x86_arm_sabermod-arm-eabi-4.8 arm-eabi-4.8

cd $DIR/prebuilts/gcc/linux-x86/arm
git clone -b master https://github.com/SaberMod/android_prebuilts_gcc_linux-x86_arm_sabermod-arm-linux-androideabi-4.9 arm-linux-androideabi-4.9

cd $DIR/build
git fetch https://github.com/VigorCM/android_build 4.8-4.9 && git cherry-pick 2eb5cd998f10d91ec7739fd50a86c4ab8cb56556

cd $DIR/frameworks/base/
git fetch https://github.com/VigorCM/android_frameworks_base && git cherry-pick fdae6574060332712c287e427559ca10431be8c7


cd $DIR/external/bluetooth/bluedroid 
git fetch https://github.com/VigorCM/android_external_bluetooth_bluedroid && git cherry-pick b924e00c80e923c4f04682b659b7ef3efb594597


cd $DIR/external/chromium/
git fetch https://github.com/VigorCM/android_external_chromium && git cherry-pick 0868f03fd0561bfd9b21be040ea3666ad19fdc6d


cd $DIR/external/clang
git fetch https://github.com/VigorCM/android_external_clang && git cherry-pick 051f818f6f699223feaebdf5f370ce1af9244d7d


cd $DIR/external/dnsmasq/ 
git fetch https://github.com/VigorCM/android_external_dnsmasq && git cherry-pick 20c1425e1b27748c4f84edbf1e2044c3dccd7244


cd $DIR/external/e2fsprogs/ 
git fetch https://github.com/VigorCM/android_external_e2fsprogs && git cherry-pick 05a6a057fc41e1848d14e6a7c1245b6d3726d3d5


cd $DIR/external/lsof/ 
git fetch https://github.com/VigorCM/android_external_lsof && git cherry-pick a7c61af7b01a1fdc05d2c340234dece84ded152c


cd $DIR/external/openssh/ 
git fetch https://github.com/VigorCM/android_external_openssh && git cherry-pick 721d558366f688bb8f671060d0f153964499bf4e


cd $DIR/external/openssl/ 
git fetch https://github.com/VigorCM/android_external_openssl && git cherry-pick 7582c39823336321c33c1e28ba7e477faf3f17ec


cd $DIR/external/openvpn/ 
git fetch https://github.com/VigorCM/android_external_openvpn && git cherry-pick 6d315c7a7da2e54739d36c84019f080075d8e044

cd $DIR/external/oprofile 
git fetch https://github.com/VigorCM/android_external_oprofile 4.8-4.9 && git cherry-pick befc593f85ac2c15d5fe7fc11ea77f7e8ffca1a1

cd $DIR/external/ping/ 
git fetch https://github.com/VigorCM/android_external_ping && git cherry-pick 550976836571a0cabafdaa0e41f8c4582216ae9d


cd $DIR/external/ping6 
git fetch https://github.com/VigorCM/android_external_ping6 && git cherry-pick dc9587742cf9e57fd941cbd0f25580db3e98a6a0


cd $DIR/external/skia/ 
git fetch https://github.com/VigorCM/android_external_skia && git cherry-pick 430f147556497436e43913200ea8a79a10a04fb2


cd $DIR/external/stlport/
git fetch https://github.com/VigorCM/android_external_stlport && git cherry-pick 919520e512e057e6d4b5fe1e1cd58ab9805d0218


cd $DIR/external/v8/ 
git fetch https://github.com/VigorCM/android_external_v8 && git cherry-pick 67cdfe27581f2372a3ac77eba455d9661506be2a


cd $DIR/external/webkit/ 
git fetch https://github.com/VigorCM/android_external_webkit && git cherry-pick ff4517216b6255bc3ec75c143a71a3dc10b1574e


cd $DIR/external/wpa_supplicant_8/ 
git fetch https://github.com/VigorCM/android_external_wpa_supplicant_8 && git cherry-pick beff80e72cf9ddb83e8f77abaf0dc8bf07e7ff38


cd $DIR/frameworks/av/  
git fetch https://github.com/VigorCM/android_frameworks_av && git cherry-pick ccccb563324db3e7ff5e255128a1fac31754fb87


cd $DIR/frameworks/compile/libbcc
git fetch https://github.com/VigorCM/android_frameworks_compile_libbcc && git cherry-pick 0be8485e4e38e00d9b83f6c4cbcf2de8690fab20


cd $DIR/frameworks/ex/
git fetch https://github.com/VigorCM/android_frameworks_ex && git cherry-pick d1460f2b8101d8c03072765545f5d4b167c3bec1


cd $DIR/frameworks/native/ 
git fetch https://github.com/VigorCM/android_frameworks_native && git cherry-pick a0fdf3adf3c17161ccf8aa3bbc4e06f375213250


cd $DIR/frameworks/rs/ 
git fetch https://github.com/VigorCM/android_frameworks_rs && git cherry-pick 8898348a1a3446ba2951a4be998b327241960f5d


cd $DIR/frameworks/wilhelm/ 
git fetch https://github.com/VigorCM/android_frameworks_wilhelm && git cherry-pick cca27525987a78abe0c9b63b6b40faa8b042922d


cd $DIR/hardware/msm7k/librpc
git fetch https://github.com/VigorCM/android_hardware_msm7k && git cherry-pick 38472cdff7655fe1e11822f8748a3c01a9ef98e9


cd $DIR/hardware/qcom/display 
git fetch https://github.com/VigorCM/android_hardware_qcom_display && git cherry-pick 47e7f40890a39b862bc0097a57452ad8c4aacbdf


cd $DIR/hardware/qcom/display-legacy/
git fetch https://github.com/VigorCM/android_hardware_qcom_display-legacy && git cherry-pick 93764ec57b8e1a88eba7f252d89ba50f22cde82d


cd $DIR/hardware/qcom/media 
git fetch https://github.com/VigorCM/android_hardware_qcom_media && git cherry-pick 40283ff435651cc67fa4c616437bfd12bcd729a1

cd $DIR/libcore 
git fetch https://github.com/VigorCM/android_libcore && git cherry-pick b7bdcde9b774ece13d22d634b51dcfefbc8a68f6


cd $DIR/system/security/
git fetch https://github.com/VigorCM/android_system_security && git cherry-pick 2f2cd35bbd4219d23a89615942776c61f1086b3a

cd $DIR/kernel/htc/vigor-3.0
git fetch https://github.com/VigorCM/vigor_aosp_kernel 4.8-4.9 && git cherry-pick f804449fe697b84ab52b113a65a4b563aaf633d5

cd $DIR/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9
git fetch https://github.com/VigorCM/SaberMod_Androideabi_4.9.git master && git cherry-pick 32f1fe199539bdb3388d253ee34cdabceaf22784

cd $DIR
./vendor/cm/get-prebuilts
. build/envsetup.sh
