#!/usr/bin/env bash

TARBALL=$(guix pack -RR -S /bin=bin -S /etc=etc -S /share=share -C none mysql)
mkdir ds-mysql-guix-pack
tar -xf $TARBALL -C ds-mysql-guix-pack # For some reason tar doesn't like appending to this
cp -r extra-files/* ds-mysql-guix-pack
tar -czf ds-mysql-guix-pack.tar.gz ds-mysql-guix-pack
chmod -R +w ds-mysql-guix-pack
rm -rf ds-mysql-guix-pack
