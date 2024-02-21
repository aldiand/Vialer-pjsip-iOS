mkdir -p dist/ios/

cp -r VialerPJSIP.xcframework dist/ios/VialerPJSIP.xcframework

test -d dist/ios/VialerPJSIP.xcframework/ios-arm64/VialerPJSIP.framework
test -d dist/ios/VialerPJSIP.xcframework/ios-arm64_x86_64-simulator/VialerPJSIP.framework

rm release.tar.gz
cd dist

tar -czvf ../release.tar.gz ./