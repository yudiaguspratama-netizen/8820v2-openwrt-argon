#!/bin/bash
# Hapus sisa build sebelumnya agar tidak bentrok
rm -rf feeds
./scripts/feeds update -a
./scripts/feeds install -a
