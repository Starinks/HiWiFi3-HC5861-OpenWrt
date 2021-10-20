#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

#固件架构
cat >> .config <<EOF
CONFIG_TARGET_ramips=y
CONFIG_TARGET_ramips_mt7620=y
CONFIG_TARGET_ramips_mt7620_DEVICE_hiwifi_hc5861=y
EOF

#取消默认启用的软件
cat >> .config <<EOF
# CONFIG_PACKAGE_luci-app-accesscontrol is not set
# CONFIG_PACKAGE_luci-app-vlmcsd is not set
# CONFIG_PACKAGE_luci-app-unblockmusic is not set
EOF

#使固件支持tf卡扩展
#cat >> .config <<EOF
#CONFIG_PACKAGE_kmod-nls-cp437=y
#CONFIG_PACKAGE_kmod-nls-iso8859-1=y
#CONFIG_PACKAGE_kmod-nls-utf8=y
#CONFIG_PACKAGE_kmod-sdhci=y
#CONFIG_PACKAGE_kmod-sit=y
#CONFIG_PACKAGE_block-mount=y
#CONFIG_PACKAGE_kmod-fs-ext4=y
#CONFIG_PACKAGE_kmod-fs-vfat=y
#EOF

#启用软件
cat >> .config <<EOF
CONFIG_PACKAGE_luci-app-argon-config=y
CONFIG_PACKAGE_luci-app-jd-dailybonus=y
CONFIG_PACKAGE_ipv6helper=y
EOF

#启用主题
cat >> .config <<EOF
CONFIG_PACKAGE_luci-theme-argon=y
EOF
