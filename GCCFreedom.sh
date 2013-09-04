!/bin/bash

#GCC Freedom

echo
echo
echo This will take a few minutes on the first run...
echo This will download up to 2GB on the first run...
echo
echo

DIR=$(pwd)

cd $DIR/prebuilts/gcc/linux-x86/arm/
rm -rf arm-eabi-4.6 arm-linux-androideabi-4.6
git clone -b sm-jb-mr2 https://github.com/IAmTheOneTheyCallNeo/android_prebuilts_gcc_linux-x86_arm_sabermod-arm-linux-androideabi-4.9 arm-linux-androideabi-4.9
git clone -b sm-jb-mr2 https://github.com/IAmTheOneTheyCallNeo/android_prebuilts_gcc_linux-x86_arm_sabermod-arm-eabi-4.8 arm-eabi-4.8

cd $DIR/build/
git fetch https://github.com/IAmTheOneTheyCallNeo/android_build cm-10.2 && git cherry-pick 2b331bf39688383515c9153ae65a0e7b5cb9a312 afd668b1b9417e3c8a2251df71f7b7dde2fd6871

cd $DIR/external/oprofile/
git fetch https://github.com/IAmTheOneTheyCallNeo/android_external_oprofile cm-10.2 && git cherry-pick 8e47b75e800f47f7b5655dd0dcaa177091a75b04

#Strict Aliasing Fixes
cd $DIR/external/bluetooth/bluedroid/
git fetch https://github.com/IAmTheOneTheyCallNeo/android_external_bluetooth_bluedroid cm-10.2 && git cherry-pick 41bb6a2a4b6c4d175ba4f5726f1dece820b24ec1

cd $DIR/system/core/
git fetch https://github.com/IAmTheOneTheyCallNeo/android_system_core cm-10.2 && git cherry-pick 65f75f987c685135970d66592e1967ce3aad12bd

cd $DIR/frameworks/compile/slang/
git fetch https://github.com/IAmTheOneTheyCallNeo/android_frameworks_compile_slang cm-10.2 && git cherry-pick a97e560a3a2af22ef9cf9290157b6e435a7a1442

cd $DIR/frameworks/rs/
git fetch https://github.com/IAmTheOneTheyCallNeo/android_frameworks_rs cm-10.2 && git cherry-pick c5b89ee45b593f5f219caf590232fdbdc3bdc303

cd $DIR/external/e2fsprogs/
git fetch https://github.com/IAmTheOneTheyCallNeo/android_external_e2fsprogs cm-10.2 && git cherry-pick e53da9fe93a8cf86b58f7f1938a01c9f08f968ad

cd $DIR/bionic/
git fetch https://github.com/IAmTheOneTheyCallNeo/android_bionic cm-10.2 && git cherry-pick a6d6e19ed4b7f9f072f291686548396df84ac6eb

cd $DIR/frameworks/base/
git fetch https://github.com/IAmTheOneTheyCallNeo/android_frameworks_base cm-10.2 && git cherry-pick 55cb1ead131fcb88f10571c482e3e3e818ca2f10

cd $DIR/external/openssl/
git fetch https://github.com/IAmTheOneTheyCallNeo/android_external_openssl cm-10.2 && git cherry-pick 5b87d2fc96432062f0229dfcca013d9657d3c264

cd $DIR/external/skia/
git fetch https://github.com/IAmTheOneTheyCallNeo/android_external_skia cm-10.2 && git cherry-pick 75be82d2e294e31de0d91a4464c7ef3ba6100c48

cd $DIR/external/stlport/
git fetch https://github.com/IAmTheOneTheyCallNeo/android_external_stlport cm-10.2 && git cherry-pick ea24c40b5faf3d87a4eb9bc21fa2d4bcf2ee1d16

cd $DIR/frameworks/av/
git fetch https://github.com/IAmTheOneTheyCallNeo/android_frameworks_av cm-10.2 && git cherry-pick 695a95d4d15908cac354e6bf4313ffc0c271e632

cd $DIR/frameworks/wilhelm/
git fetch https://github.com/IAmTheOneTheyCallNeo/android_frameworks_wilhelm cm-10.2 && git cherry-pick 16fd988a8cc6b9612e94525a8948932e20d95acb

cd $DIR/frameworks/ex/
git fetch https://github.com/IAmTheOneTheyCallNeo/android_frameworks_ex cm-10.2 && git cherry-pick ac9c53cbdf6538a11855731311c743fb9b09c1f3

cd $DIR/external/Focal/
git fetch https://github.com/IAmTheOneTheyCallNeo/android_external_Focal cm-10.2 && git cherry-pick 96fdfd4b44f86e63fecda6b540b8f1115cf21b04

cd $DIR/external/dnsmasq/
git fetch https://github.com/IAmTheOneTheyCallNeo/android_external_dnsmasq cm-10.2 && git cherry-pick 605ebfa8d1cd23457310f7a823dc2dfb670f53f6

cd $DIR/external/ping6/
git fetch https://github.com/IAmTheOneTheyCallNeo/android_external_ping6 cm-10.2 && git cherry-pick f2526b1c6ae284b7eb41ecc729f103d219315216

cd $DIR/external/ping/
git fetch https://github.com/IAmTheOneTheyCallNeo/android_external_ping cm-10.2 && git cherry-pick bd463fa7029b6d56cbb409356c79e3d62a189d56

cd $DIR/external/openssh/
git fetch https://github.com/IAmTheOneTheyCallNeo/android_external_openssh cm-10.2 && git cherry-pick bb3bfe9965f28be23a20471fe0e2838e90aee350

cd $DIR/frameworks/native/
git fetch https://github.com/IAmTheOneTheyCallNeo/android_frameworks_native cm-10.2 && git cherry-pick c1efb0ad9bc849b9bb956d75d6c2891ccb4ea04f

cd $DIR/device/generic/goldfish/
git fetch https://github.com/IAmTheOneTheyCallNeo/android_device_generic_goldfish cm-10.2 && git cherry-pick ab00c75f171781fd0997a93616e1f8c9ffd0eac0

cd $DIR/frameworks/opt/net/voip/
git fetch https://github.com/IAmTheOneTheyCallNeo/android_frameworks_opt_net_voip cm-10.2 && git cherry-pick bb769e682010ef55ac32713d0a90dc84316f3522

cd $DIR/hardware/msm7k/
git fetch https://github.com/IAmTheOneTheyCallNeo/android_hardware_msm7k cm-10.2 && git cherry-pick f5bab7e4208ccb06ea3fa288c9c9fc926226fbd9

cd $DIR/external/lsof/ 
git fetch https://github.com/IAmTheOneTheyCallNeo/android_external_lsof cm-10.2 && git cherry-pick f461963154a23249cb74560fd7f98dc69a93e129

cd $DIR/external/chromium/
git fetch https://github.com/IAmTheOneTheyCallNeo/android_external_chromium cm-10.2 && git cherry-pick 99550ef60b74a31a4b51c2805158b39354eab410

cd $DIR/libcore/
git fetch https://github.com/IAmTheOneTheyCallNeo/android_libcore cm-10.2 && git cherry-pick db026e0d34539aa1e837fb2bb3787b6fd0c3ede6

cd $DIR/external/webkit/
git fetch https://github.com/IAmTheOneTheyCallNeo/android_external_webkit cm-10.2 && git cherry-pick 4a2b439da9647220315153100e86ede6aedd2be9

cd $DIR/external/openvpn/ 
git fetch https://github.com/IAmTheOneTheyCallNeo/android_external_openvpn cm-10.2 && git cherry-pick 0ec39d0c655530e30adc50dccb3ff84edf008699

cd $DIR/dalvik/
git fetch https://github.com/IAmTheOneTheyCallNeo/android_dalvik cm-10.2 && git cherry-pick 05c521dd1249016f7700b65e2e31d5ca5357189e

cd $DIR/external/clang/
git fetch https://github.com/IAmTheOneTheyCallNeo/android_external_clang cm-10.2 && git cherry-pick 0b6178cdee2a5bb3fff706631c8d3eac817c45cc

cd $DIR/external/bash/
git fetch https://github.com/IAmTheOneTheyCallNeo/android_external_bash cm-10.2 && git cherry-pick 455ffceb1a658a9fc0c5c6969b8cf1cb6ba6695b

cd $DIR/hardware/qcom/media-caf/
git fetch https://github.com/IAmTheOneTheyCallNeo/android_hardware_qcom_media-caf cm-10.2 && git cherry-pick 153b06b51f4c3cd0f87f9876744a442d0448ad9c

./vendor/cm/get-prebuilts
. build/envsetup.sh

echo
echo
echo Make sure to check back through all the cherry-picks and ensure everything picked smoothly...
echo Do this before you build.
echo
echo
