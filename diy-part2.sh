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
git clone https://github.com/vernesong/OpenClash.git package/lean/luci-app-openclash
git clone https://github.com/tty228/luci-app-serverchan.git package/lean/luci-app-serverchan
git clone https://github.com/weweyes/luci-app-eqos.git package/lean/luci-app-eqos
git clone https://github.com/destan19/OpenAppFilter.git package/lean/luci-app-oaf
git clone https://github.com/weweyes/luci-app-passwall.git package/lean/luci-app-passwall
git clone https://github.com/weweyes/small.git package/
