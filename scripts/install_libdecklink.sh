#!/bin/bash

PACKAGE_URL=http://software.blackmagicdesign.com/DesktopVideo/Blackmagic_Desktop_Video_Linux_10.0.tar.gz

set -e

if [ "$USER" != root ]; then
  echo "NOTICE: This command must be run as root. Please re-run as 'sudo $0'"
fi

DEB_HOST_ARCH=$(dpkg-architecture -qDEB_HOST_ARCH)
DEB_PKG_PATH="DesktopVideo_10.0/deb/$DEB_HOST_ARCH/*.deb"

cd "$(mktemp -d -t libdecklink-XXXXXXXXXX)"

echo "Downloading the package..."
echo
wget $PACKAGE_URL -O - | tar zx

echo "Installing..."
echo
dpkg -i $DEB_PKG_PATH
apt-get install -fy
