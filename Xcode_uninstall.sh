#!/bin/sh

deleteTarget=(
	/Applications/Xcode.app
	/Library/Preferences/com.apple.dt.Xcode.plist
	~/Library/Preferences/com.apple.dt.Xcode.plist
	~/Library/Caches/com.apple.dt.Xcode
	~/Library/Application Support/Xcode
	~/Library/Developer/Xcode
	~/Library/Developer/CoreSimulator
)

for file in "${deleteTarget[@]}" ; do
	echo "${file} を削除しています。"
	rm -rf ${file}
done
