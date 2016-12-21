export PATH=~/android/arm-linux-androideabi-4.9/bin:$PATH
export CROSS_COMPILE=~/android/arm-linux-androideabi-4.9/bin/arm-linux-androideabi-

mkdir $(pwd)/out
make -C $(pwd) O=$(pwd)/out msm8929_sec_defconfig VARIANT_DEFCONFIG=msm8929_sec_j7_spr_defconfig SELINUX_DEFCONFIG=selinux_defconfig
make -C $(pwd) O=$(pwd)/out
cp $(pwd)/out/arch/arm/boot/zImage $(pwd)/arch/arm/boot/zImage
