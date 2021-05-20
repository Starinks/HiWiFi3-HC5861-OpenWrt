1.可挂载并使用sd卡扩容路由器/目录，扩展/overlay目录，感谢教程https://www.bilibili.com/video/BV1mA411L7NY?t=359
命令：
mkdir -p /tmp/introot
mkdir -p /tmp/extroot
mount --bind / /tmp/introot
mount /dev/mmcblk0p1 /tmp/extroot
tar -C /tmp/introot -cvf - . | tar -C /tmp/extroot -xf -
umount /tmp/introot
umount /tmp/extroot
