#!/usr/bin/sh
set -e

echo "*** Extract files"
unzip -p safenet.zip Ubuntu-2204/safenetauthenticationclient_10.8.1050_amd64.deb |
  bsdtar -Oxf - data.tar.gz |
  bsdtar -xf - --strip-components=2 ./usr/lib

echo "*** Install ${FLATPAK_DEST}/lib/pkcs11/libeToken.so"
mkdir -p ${FLATPAK_DEST}/lib/pkcs11
install lib/libeToken.so.10.8.1050 ${FLATPAK_DEST}/lib/
ln -s ${FLATPAK_DEST}/lib/libeToken.so.10.8.1050 ${FLATPAK_DEST}/lib/pkcs11/libeToken.so

echo "*** Create ${FLATPAK_DEST}/modules/libeToken.module"
mkdir -p ${FLATPAK_DEST}/modules
echo "module:${FLATPAK_DEST}/lib/pkcs11/libeToken.so" > ${FLATPAK_DEST}/modules/libeToken.module
