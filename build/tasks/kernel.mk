ifneq ($(filter beryllium, $(TARGET_DEVICE)),)

IMAGE_GZ := device/xiaomi/beryllium/prebuilt-kernel/android-$(TARGET_KERNEL_USE)/kernel/Image.gz

DTB_EBBG := device/xiaomi/beryllium/prebuilt-kernel/android-$(TARGET_KERNEL_USE)/dtb/sdm845-xiaomi-beryllium-ebbg.dtb
DTB_TIANMA := device/xiaomi/beryllium/prebuilt-kernel/android-$(TARGET_KERNEL_USE)/dtb/sdm845-xiaomi-beryllium-tianma.dtb
DTB_MTP := device/xiaomi/beryllium/prebuilt-kernel/android-$(TARGET_KERNEL_USE)/dtb/sdm845-mtp.dtb


# For EBBG
$(PRODUCT_OUT)/kernel: $(IMAGE_GZ) $(DTB_EBBG) $(DTB_MTP)
	cat $(IMAGE_GZ) $(DTB) > $@

# Fot TIANMA
#$(PRODUCT_OUT)/kernel: $(IMAGE_GZ) $(DTB_TIANMA)
#	cat $(IMAGE_GZ) $(DTB) > $@

droidcore: $(PRODUCT_OUT)/kernel

endif
