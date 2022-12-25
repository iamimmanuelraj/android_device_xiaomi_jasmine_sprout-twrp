# Charger
PRODUCT_PACKAGES += \
    charger_res_images \
    charger

# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=erofs \
    POSTINSTALL_OPTIONAL_system=true

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_product=true \
    POSTINSTALL_PATH_product=bin/check_dynamic_partitions \
    FILESYSTEM_TYPE_product=erofs \
    POSTINSTALL_OPTIONAL_product=false

PRODUCT_PACKAGES += \
    otapreopt_script

PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl:64 \
    android.hardware.boot@1.0-impl.recovery \
    android.hardware.boot@1.0-service \
    bootctrl.sdm660 \
    bootctrl.sdm660.recovery

PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

# Fastbootd
TW_INCLUDE_FASTBOOTD := true
PRODUCT_PACKAGES += \
    fastbootd \
    android.hardware.fastboot@1.0-impl-mock \
    android.hardware.fastboot@1.0-impl-mock.recovery

# Qcom decryption
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

# Retrofit Dynamic Partition
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_RETROFIT_DYNAMIC_PARTITIONS := true
