#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:61281614:6c7cac89bbb478639de2c78571d60f2beea8e869; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:54592842:c459035a85858543fb5634f9f53f783ce8144936 EMMC:/dev/block/bootdevice/by-name/recovery 6c7cac89bbb478639de2c78571d60f2beea8e869 61281614 c459035a85858543fb5634f9f53f783ce8144936:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
