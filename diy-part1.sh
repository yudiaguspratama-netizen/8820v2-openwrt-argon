#!/bin/bash
# Hapus feeds lama dan ambil yang segar
rm -rf feeds
./scripts/feeds update -a
./scripts/feeds install -a

# Tambahkan library yang sering hilang pada build mipsel
./scripts/feeds install libncurses5-dev
