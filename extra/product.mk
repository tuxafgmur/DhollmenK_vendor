# Extra packages to install

# Rootdir
PRODUCT_COPY_FILES += \
	vendor/extra/rootdir/init.extra.rc:root/init.extra.rc

# Etc
PRODUCT_COPY_FILES += \
	vendor/extra/etc/mkshrc:system/etc/mkshrc \
	vendor/extra/etc/sysctl.conf:system/etc/sysctl.conf

# Viper4FX
PRODUCT_COPY_FILES += \
	packages/apps/Viper4FX/lib/libV4AJniUtils.so:system/lib/libV4AJniUtils.so \
	packages/apps/Viper4FX/assets/libv4a_fx_NEON.so:system/lib/soundfx/libv4a_fx.so

# Wallpaper
PRODUCT_COPY_FILES += \
	vendor/extra/wallpaper/WallpaperPicker.apk:system/app/WallpaperPicker.apk

# Xbin
PRODUCT_COPY_FILES += \
	vendor/extra/xbin/dexopt-wrapper:system/xbin/dexopt-wrapper \
	vendor/extra/xbin/load.sh:system/xbin/load.sh \
	vendor/extra/xbin/perm.sh:system/xbin/perm.sh \
	vendor/extra/xbin/zip:system/xbin/zip \
	vendor/extra/xbin/zipalign:system/xbin/zipalign \
	vendor/extra/xbin/sysro:system/xbin/sysro \
	vendor/extra/xbin/sysrw:system/xbin/sysrw
