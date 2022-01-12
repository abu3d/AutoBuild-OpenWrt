#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. 修改默认的IP
sed -i 's/192.168.1.1/192.168.199.220/g' openwrt/package/base-files/files/bin/config_generate

#2. 修改主机名
sed -i '/uci commit system/i\uci set system.@system[0].hostname='Soft_Routes'' openwrt/package/lean/default-settings/files/zzz-default-settings

#3. 设置密码为空
sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' openwrt/package/lean/default-settings/files/zzz-default-settings

#4. 版本号里显示一个自己的名字
sed -i "s/OpenWrt /Abu3d-Pve $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" openwrt/package/lean/default-settings/files/zzz-default-settings
