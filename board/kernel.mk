# Kernel informations
BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom msm_rtb.filter=0x3F ehci-hcd.park=3
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_IMAGE_NAME := zImage
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000

# Toolchain
# KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9/bin
TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-linux-androideabi-

# Serial console
BOARD_ENABLE_SERIAL_CONSOLE := false
ifeq ($(BOARD_ENABLE_SERIAL_CONSOLE),true)
BOARD_KERNEL_CMDLINE += console=ttyHSL0,115200,n8
endif

# Kernel properties
TARGET_KERNEL_SOURCE := kernel/sony/apq8064

# Custom boot
BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK := $(COMMON_PATH)/boot/custombootimg.mk
