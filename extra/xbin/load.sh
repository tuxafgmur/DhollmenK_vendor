#!/system/bin/sh
# DhollmenCM

if [ ! -d /system/$2 ] ; then
	echo "ERROR: /system/$2 - dir not found"
fi

echo "Loading  $3  /system/$2/$1"

IsRw="0"
mount | grep /system | grep -q rw && IsRw="1"
[ "$IsRw" = "0" ] && mount -o remount,rw /system   >/dev/null 2>&1
cp /data/local/tmp/$1 /system/$2/$1
chmod $3 /system/$2/$1 || exit 1
rm /data/local/tmp/$1  || exit 1
[ "$IsRw" = "0" ] && mount -o remount,ro /system   >/dev/null 2>&1
echo "Done"
echo
