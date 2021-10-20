#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# 下载新主题
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon

# 删除旧主题
rm -rf package/lean/luci-theme-argon

rm -rf package/lean/luci-app-jd-dailybonus

git clone https://github.com/jerrykuku/lua-maxminddb.git package/lua-maxminddb #git lua-maxminddb 依赖

git clone https://github.com/jerrykuku/luci-app-vssr.git package/luci-app-vssr

git clone https://github.com/jerrykuku/luci-app-argon-config.git package/luci-app-argon-config

#git clone https://github.com/fw876/helloworld.git package/helloworld #shadowsocks

git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/luci-app-jd-dailybonus
