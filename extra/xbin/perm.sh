#!/system/bin/sh
# DhollmenCM

IsRw="0"
mount | grep /system | grep -q rw  && IsRw="1"

[ "$IsRw" = "0" ] && mount -o remount,rw /system  >/dev/null 2>&1

echo
echo " Setting system permissions"
echo

chown 0.0   $(find /system)
chmod 0755  $(find /system  -type d)

rm -f /system/bin/su
chmod 0755  $(find /system/bin  -type f)
chmod 0755  $(find /system/xbin -type f)
chmod 0755  $(find /system/vendor/bin -type f)

for q in $(find /system ! -path '/system/bin/*' ! -path '/system/xbin/*' ! -path '/system/vendor/bin/*' -type f) ; do
	chmod 0644 $q
done

chmod 2750 /system/bin/netcfg
chmod 2755 /system/bin/ping
chmod 6750 /system/bin/run-as

chmod 6755 /system/xbin/librank
chmod 6755 /system/xbin/procmem
chmod 6755 /system/xbin/procrank
chmod 6755 /system/xbin/su

chmod 0755  $(find /system/etc/init.d -type f)  >/dev/null 2>&1

chown 1014.2000 /system/etc/dhcpcd/dhcpcd-run-hooks
chmod 0550      /system/etc/dhcpcd/dhcpcd-run-hooks
chmod 0555      $(find /system/etc/ppp -type f)

[ "$IsRw" = "0" ] && mount -o remount,ro /system  >/dev/null 2>&1

echo " done"
echo
