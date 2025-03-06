#!/usr/bin/sh
set -e

bsdtar -Oxf safenetauthenticationclient-core_10.8.1050_amd64.deb data.tar.gz |
  bsdtar -xf - --strip-components=2 ./usr/lib

cp -r lib ${FLATPAK_DEST}/
