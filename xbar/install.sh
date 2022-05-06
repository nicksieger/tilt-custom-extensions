#!/usr/bin/env bash
#
# Install Tilt into your xbar.

url=https://raw.githubusercontent.com/nicksieger/tilt-custom-extensions/main/xbar
xbar_plugins="$HOME/Library/Application Support/xbar/plugins"
tilt_xbar="${xbar_plugins}/tilt"

mkdir -p "${tilt_xbar}"
cd "${tilt_xbar}"
rm -f *
curl -sLO "${url}/tilt-icon.png"
curl -sLO "${url}/tilt-xbar"
curl -sLO "${url}/tilt-xbar-cmd"
curl -sLO "${url}/tiltctl"
chmod 755 tilt-xbar tilt-xbar-cmd tiltctl

cd "${xbar_plugins}"
rm -f tilt.*.sh
ln -s tilt/tilt-xbar tilt.2s.sh
