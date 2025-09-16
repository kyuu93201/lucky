#!/bin/bash
# run.sh - script chạy Minecraft server

# Dung lượng RAM tối thiểu và tối đa (tùy máy bạn)
MIN_RAM=1G
MAX_RAM=4G

echo "=== Bắt đầu khởi động Minecraft Server ==="

# Chạy server
java -Xms$MIN_RAM -Xmx$MAX_RAM -jar paper-1.21.7-32.jar nogui

echo "=== Server đã dừng ==="
