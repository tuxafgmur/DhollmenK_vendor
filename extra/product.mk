# Extra packages to install

# Rootdir
PRODUCT_COPY_FILES += \
	vendor/extra/rootdir/init.extra.rc:root/init.extra.rc

# Etc
PRODUCT_COPY_FILES += \
	vendor/extra/etc/mkshrc:system/etc/mkshrc \
	vendor/extra/etc/sysctl.conf:system/etc/sysctl.conf \
	vendor/extra/etc/init.d/90-Clean:system/etc/init.d/90-Clean

# Viper4FX
PRODUCT_COPY_FILES += \
	packages/apps/Viper4FX/lib/libV4AJniUtils.so:system/lib/libV4AJniUtils.so \
	packages/apps/Viper4FX/assets/libv4a_fx_NEON.so:system/lib/soundfx/libv4a_fx.so

# Wallpaper
PRODUCT_COPY_FILES += \
	vendor/extra/wallpaper/WallpaperPicker.apk:system/app/WallpaperPicker.apk \
	vendor/extra/wallpaper/wallpapers/wallpaper_01.jpg:system/media/wallpapers/wallpaper_01.jpg \
	vendor/extra/wallpaper/wallpapers/wallpaper_01_small.jpg:system/media/wallpapers/wallpaper_01_small.jpg \
	vendor/extra/wallpaper/wallpapers/wallpaper_02.jpg:system/media/wallpapers/wallpaper_02.jpg \
	vendor/extra/wallpaper/wallpapers/wallpaper_02_small.jpg:system/media/wallpapers/wallpaper_02_small.jpg \
	vendor/extra/wallpaper/wallpapers/wallpaper_03.jpg:system/media/wallpapers/wallpaper_03.jpg \
	vendor/extra/wallpaper/wallpapers/wallpaper_03_small.jpg:system/media/wallpapers/wallpaper_03_small.jpg \
	vendor/extra/wallpaper/wallpapers/wallpaper_04.jpg:system/media/wallpapers/wallpaper_04.jpg \
	vendor/extra/wallpaper/wallpapers/wallpaper_04_small.jpg:system/media/wallpapers/wallpaper_04_small.jpg \
	vendor/extra/wallpaper/wallpapers/wallpaper_05.jpg:system/media/wallpapers/wallpaper_05.jpg \
	vendor/extra/wallpaper/wallpapers/wallpaper_05_small.jpg:system/media/wallpapers/wallpaper_05_small.jpg \
	vendor/extra/wallpaper/wallpapers/wallpaper_06.jpg:system/media/wallpapers/wallpaper_06.jpg \
	vendor/extra/wallpaper/wallpapers/wallpaper_06_small.jpg:system/media/wallpapers/wallpaper_06_small.jpg \
	vendor/extra/wallpaper/wallpapers/wallpaper_07.jpg:system/media/wallpapers/wallpaper_07.jpg \
	vendor/extra/wallpaper/wallpapers/wallpaper_07_small.jpg:system/media/wallpapers/wallpaper_07_small.jpg \
	vendor/extra/wallpaper/wallpapers/wallpaper_08.jpg:system/media/wallpapers/wallpaper_08.jpg \
	vendor/extra/wallpaper/wallpapers/wallpaper_08_small.jpg:system/media/wallpapers/wallpaper_08_small.jpg \
	vendor/extra/wallpaper/wallpapers/wallpaper_09.jpg:system/media/wallpapers/wallpaper_09.jpg \
	vendor/extra/wallpaper/wallpapers/wallpaper_09_small.jpg:system/media/wallpapers/wallpaper_09_small.jpg \
	vendor/extra/wallpaper/wallpapers/wallpaper_10.jpg:system/media/wallpapers/wallpaper_10.jpg \
	vendor/extra/wallpaper/wallpapers/wallpaper_10_small.jpg:system/media/wallpapers/wallpaper_10_small.jpg \
	vendor/extra/wallpaper/wallpapers/wallpaper_11.jpg:system/media/wallpapers/wallpaper_11.jpg \
	vendor/extra/wallpaper/wallpapers/wallpaper_11_small.jpg:system/media/wallpapers/wallpaper_11_small.jpg \
	vendor/extra/wallpaper/wallpapers/wallpaper_12.jpg:system/media/wallpapers/wallpaper_12.jpg \
	vendor/extra/wallpaper/wallpapers/wallpaper_12_small.jpg:system/media/wallpapers/wallpaper_12_small.jpg \
	vendor/extra/wallpaper/wallpapers/wallpaper_13.jpg:system/media/wallpapers/wallpaper_13.jpg \
	vendor/extra/wallpaper/wallpapers/wallpaper_13_small.jpg:system/media/wallpapers/wallpaper_13_small.jpg \
	vendor/extra/wallpaper/wallpapers/wallpaper_14.jpg:system/media/wallpapers/wallpaper_14.jpg \
	vendor/extra/wallpaper/wallpapers/wallpaper_14_small.jpg:system/media/wallpapers/wallpaper_14_small.jpg \
	vendor/extra/wallpaper/wallpapers/wallpaper_15.jpg:system/media/wallpapers/wallpaper_15.jpg \
	vendor/extra/wallpaper/wallpapers/wallpaper_15_small.jpg:system/media/wallpapers/wallpaper_15_small.jpg \
	vendor/extra/wallpaper/wallpapers/wallpaper_16.jpg:system/media/wallpapers/wallpaper_16.jpg \
	vendor/extra/wallpaper/wallpapers/wallpaper_16_small.jpg:system/media/wallpapers/wallpaper_16_small.jpg \
	vendor/extra/wallpaper/wallpapers/wallpaper_17.jpg:system/media/wallpapers/wallpaper_17.jpg \
	vendor/extra/wallpaper/wallpapers/wallpaper_17_small.jpg:system/media/wallpapers/wallpaper_17_small.jpg \
	vendor/extra/wallpaper/wallpapers/wallpaper_18.jpg:system/media/wallpapers/wallpaper_18.jpg \
	vendor/extra/wallpaper/wallpapers/wallpaper_18_small.jpg:system/media/wallpapers/wallpaper_18_small.jpg \
	vendor/extra/wallpaper/wallpapers/wallpaper_19.jpg:system/media/wallpapers/wallpaper_19.jpg \
	vendor/extra/wallpaper/wallpapers/wallpaper_19_small.jpg:system/media/wallpapers/wallpaper_19_small.jpg \
	vendor/extra/wallpaper/wallpapers/wallpaper_20.jpg:system/media/wallpapers/wallpaper_20.jpg \
	vendor/extra/wallpaper/wallpapers/wallpaper_20_small.jpg:system/media/wallpapers/wallpaper_20_small.jpg

# Xbin
PRODUCT_COPY_FILES += \
	vendor/extra/xbin/dexopt-wrapper:system/xbin/dexopt-wrapper \
	vendor/extra/xbin/load.sh:system/xbin/load.sh \
	vendor/extra/xbin/perm.sh:system/xbin/perm.sh \
	vendor/extra/xbin/zip:system/xbin/zip \
	vendor/extra/xbin/zipalign:system/xbin/zipalign \
	vendor/extra/xbin/sysro:system/xbin/sysro \
	vendor/extra/xbin/sysrw:system/xbin/sysrw
