#!/bin/bash

VERSION="v2.2.1"

# download
wget https://github.com/rfjakob/gocryptfs/releases/download/"$VERSION"/gocryptfs_"$VERSION"_linux-static_amd64.tar.gz -O /tmp/gocryptfs_"$VERSION"_linux-static_amd64.tar.gz 

# unpack
mkdir -p /tmp/gocryptfs
tar xvfz /tmp/gocryptfs_"$VERSION"_linux-static_amd64.tar.gz -C /tmp/gocryptfs

# install
cp /tmp/gocryptfs/gocryptfs /tmp/gocryptfs/gocryptfs-xray /usr/local/bin/
cp /tmp/gocryptfs/*.1 /usr/local/share/man/man1/
chmod +x /usr/local/bin/gocryptfs*

# cleanup
rm -Rf /tmp/gocryptfs
