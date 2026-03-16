#!/bin/bash
# Buat folder jika belum ada
mkdir -p files/etc/uci-defaults

# Script Auto-Config
cat <<EOF > files/etc/uci-defaults/99-custom-setup
#!/bin/sh
# Aktifkan WiFi
uci set wireless.radio0.disabled='0'
uci set wireless.radio1.disabled='0'
# Aktifkan ZRAM (32MB)
uci set system.@system[0].zram_size_mb='32'
uci commit
exit 0
EOF

chmod +x files/etc/uci-defaults/99-custom-setup
