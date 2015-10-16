#!/bin/sh
#
# Swiped from https://discussions.apple.com/thread/5472392

echo ===============================
echo Resetting DNS search domains...
echo ===============================

printf "%s\n" "Stopping mDNSResponder.plist..."
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.mDNSResponder.plist

printf "%s\n" "Starting mDNSResponder.plist..."
sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.mDNSResponder.plist

printf "%s\n" "Restarted mDNSResponder.plist..."
