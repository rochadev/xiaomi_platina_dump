#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:60810574:0667975d8465289274dcdcb0e40adb2d335983a2; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:54584650:897ebf3f9e412f30018fb9464b7891dbdacb4931 EMMC:/dev/block/bootdevice/by-name/recovery 0667975d8465289274dcdcb0e40adb2d335983a2 60810574 897ebf3f9e412f30018fb9464b7891dbdacb4931:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
