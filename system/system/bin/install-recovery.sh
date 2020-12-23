#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:3cf4be828e05bb344be5f778737d2a42f9a937f4; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:2bf91495fb6c82fdafe62c2581bb7fdd6407f8db EMMC:/dev/block/bootdevice/by-name/recovery 3cf4be828e05bb344be5f778737d2a42f9a937f4 67108864 2bf91495fb6c82fdafe62c2581bb7fdd6407f8db:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
