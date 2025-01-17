#!/bin/sh
set -e

./vialerbuild --extra-config-site-options="PJ_IPHONE_OS_HAS_MULTITASKING_SUPPORT 1,PJSIP_AUTH_HEADER_CACHING 1,PJSIP_AUTH_AUTO_SEND_NEXT 1,PJSUA_DISABLE_AUTO_SEND_100 1,PJSUA_HAS_VIDEO 0,PJ_ACTIVESOCK_TCP_IPHONE_OS_BG 0"
./vialerbuild-sim --extra-config-site-options="PJ_IPHONE_OS_HAS_MULTITASKING_SUPPORT 1,PJSIP_AUTH_HEADER_CACHING 1,PJSIP_AUTH_AUTO_SEND_NEXT 1,PJSUA_DISABLE_AUTO_SEND_100 1,PJSUA_HAS_VIDEO 0,PJ_ACTIVESOCK_TCP_IPHONE_OS_BG 0"

rm -rf VialerPJSIP.xcframework
xcodebuild -create-xcframework -framework iphoneos/VialerPJSIP.framework -framework iphonesimulator/VialerPJSIP.framework -output "VialerPJSIP.xcframework"
