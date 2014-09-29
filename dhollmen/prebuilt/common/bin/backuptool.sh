#!/sbin/sh
# Backup and restore addon /system files
# Dhollmen version

export C=/tmp/backupdir
export S=/system

preserve_addon_d() {
	mkdir -p /tmp/addon.d/
	cp -a /system/addon.d/* /tmp/addon.d/
	chown 0.0 /tmp/addon.d/*.sh
	chmod 755 /tmp/addon.d/*.sh
}

restore_addon_d() {
	for script in /tmp/addon.d/*; do
		case $script in
			*"50-rom.sh")	 ;;
			*"55-initd.sh")	 ;;
			*"99-backup.sh") ;;
			*)	cp -a $script /system/addon.d/
				;;
		esac
	done
	rm -rf /tmp/addon.d/
}

run_stage() {
	for script in $(find /tmp/addon.d/ -name '*.sh' |sort -n); do
		$script $1
	done
}

if [ ! -d /tmp/tester ]; then
	mkdir /tmp/tester
	mount /dev/block/mmcblk0p10 /tmp/tester
	if [ ! -d /tmp/tester/app ]; then
		mkdir  /tmp/testar
		mount  /dev/block/mmcblk0p9 /tmp/testar
		rm -rf /tmp/testar/addon.d
		umount /tmp/testar
	fi
	umount /tmp/tester
fi

case "$1" in
	backup)
		mkdir -p $C
		preserve_addon_d
		run_stage pre-backup
		run_stage backup
		run_stage post-backup
		;;
	restore)
		run_stage pre-restore
		run_stage restore
		run_stage post-restore
		restore_addon_d
		rm -rf $C
		sync
		;;
	*)
		echo "Usage: $0 {backup|restore}"
		exit 1
esac
exit 0
