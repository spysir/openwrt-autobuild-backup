#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

# Modify default IP
sed -i 's/192.168.1.1/192.168.8.5/g' package/base-files/files/bin/config_generate
# add app
git clone https://github.com/weweyes/OpenClash.git package/luci-app-openclash
git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
git clone https://github.com/weweyes/luci-app-eqos.git package/luci-app-eqos
git clone https://github.com/weweyes/OpenAppFilter.git package/luci-app-oaf
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-smartdns package/luci-app-smartdns

# add theme
svn co https://github.com/weweyes/openwrt-packages/trunk/luci-theme-opentomcat package/luci-theme-opentomcat
#git clone https://github.com/weweyes/luci-app-argon-config.git package/luci-app-argon-config
#git clone https://github.com/weweyes/luci-theme-argon.git package/luci-theme-argon
