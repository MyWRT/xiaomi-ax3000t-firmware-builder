# Description: (Before Update feeds)


# Uncomment a feed source
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

# echo "src-git kenzo https://github.com/kenzok8/openwrt-packages" >> ./feeds.conf.default   
# echo "src-git small https://github.com/kenzok8/small" >> ./feeds.conf.default

# Add luci-app-netdata
git clone --depth 1 --branch master --single-branch --no-checkout https://github.com/muink/luci-app-netdata.git package/luci-app-netdata
pushd package/luci-app-netdata
umask 022
git checkout
popd

# Add luci-app-wechatpush
git clone --depth 1 --branch master --single-branch --no-checkout https://github.com/tty228/luci-app-wechatpush.git package/luci-app-wechatpush
pushd package/luci-app-wechatpush
umask 022
git checkout
popd