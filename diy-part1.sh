#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# Uncomment a feed source 
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
sed -i '$a src-git lienol https://github.com/weweyes/openwrt-package' feeds.conf.default
#sed -i '$a src-git kenzo https://github.com/weweyes/openwrt-packages' feeds.conf.default
# Add passwall
#sed -i '$a src-git passwall https://github.com/weweyes/luci-app-passwall' feeds.conf.default
# Add passwall dependency package
#sed -i '$a src-git small https://github.com/weweyes/small' feeds.conf.default
