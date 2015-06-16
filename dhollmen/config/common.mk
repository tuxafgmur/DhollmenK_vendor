PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1 \
    ro.boot.selinux=0

# Disable excessive dalvik debug messages
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.debug.alloc=0

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/dhollmen/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/dhollmen/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/dhollmen/prebuilt/common/bin/50-rom.sh:system/addon.d/50-rom.sh \
    vendor/dhollmen/prebuilt/common/bin/55-initd.sh:system/addon.d/55-initd.sh \
    vendor/dhollmen/prebuilt/common/bin/99-backup.sh:system/addon.d/99-backup.sh \
    vendor/dhollmen/prebuilt/common/etc/backup.conf:system/etc/backup.conf

# Init.d support
PRODUCT_COPY_FILES += \
    vendor/dhollmen/prebuilt/common/etc/init.d/70-Clean:system/etc/init.d/70-Clean \
    vendor/dhollmen/prebuilt/common/etc/init.d/80-Fstrim:system/etc/init.d/80-Fstrim
    
# Copy latinime for gesture typing
PRODUCT_COPY_FILES += \
    vendor/dhollmen/prebuilt/common/lib/libjni_latinime.so:system/lib/libjni_latinime.so

# SELinux filesystem labels
PRODUCT_COPY_FILES += \
    vendor/dhollmen/prebuilt/common/etc/init.d/50-Selinuxrelabel:system/etc/init.d/50-Selinuxrelabel

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Embed SuperUser
SUPERUSER_EMBEDDED := true

# Required packages
PRODUCT_PACKAGES += \
    CellBroadcastReceiver \
    Development \
    SpareParts \
    Superuser \
    su

# Optional packages
PRODUCT_PACKAGES += \
    Basic \
    HoloSpiralWallpaper \
    NoiseField \
    Galaxy4 \
    LiveWallpapersPicker \
    PhaseBeam

# Extra Optional packages
PRODUCT_PACKAGES += \
    CMFileManager \
    DashClock \
    LatinIME \
    SlimLauncher \
    SoundRecorder \
    Viper4FX

# Extra tools
PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    f2fstat \
    f2fstat \
    fibmap.f2fs \
    ntfsfix \
    ntfs-3g \
    fsck.f2fs \
    mkfs.f2fs

# Stagefright FFMPEG plugin
PRODUCT_PACKAGES += \
    libstagefright_soft_ffmpegadec \
    libstagefright_soft_ffmpegvdec \
    libFFmpegExtractor \
    libnamparser

# easy way to extend to add more packages
-include vendor/extra/product.mk

PRODUCT_PACKAGE_OVERLAYS += vendor/dhollmen/overlay/common

# Versioning System
# KitKat freeze code
PRODUCT_VERSION_MAJOR = 4.4.4
PRODUCT_VERSION_MINOR = build
PRODUCT_VERSION_MAINTENANCE = 9.1
ifdef SLIM_BUILD_EXTRA
    SLIM_POSTFIX := -$(SLIM_BUILD_EXTRA)
endif
ifndef SLIM_BUILD_TYPE
    SLIM_BUILD_TYPE := UNOFFICIAL
    SLIM_POSTFIX := $(shell date +"%Y%m%d")
endif

PLATFORM_VERSION_CODENAME := $(PRODUCT_VERSION_MINOR)-$(PRODUCT_VERSION_MAINTENANCE)

# Set all versions
SLIM_VERSION := DhollmenK-$(PRODUCT_VERSION_MAJOR)_$(SLIM_BUILD)-$(PRODUCT_VERSION_MINOR)_$(PRODUCT_VERSION_MAINTENANCE)-$(SLIM_POSTFIX)
SLIM_MOD_VERSION := DhollmenK-$(PRODUCT_VERSION_MAJOR)_$(SLIM_BUILD)-$(SLIM_POSTFIX)

PRODUCT_PROPERTY_OVERRIDES += \
    BUILD_DISPLAY_ID=$(BUILD_ID) \
    ro.dhollmen.version=$(SLIM_VERSION) \
    ro.modversion=$(SLIM_MOD_VERSION)

