#!/bin/bash
if ! modutil -dbdir sql:~/.pki/nssdb -list 2>/dev/null | grep -q "eToken"; then
  echo "Adicionando o módulo 'eToken' ao banco de dados NSS..."
  modutil -dbdir sql:~/.pki/nssdb -add "eToken" -libfile ${FLATPAK_DEST}/lib/libeToken.so -force
fi
