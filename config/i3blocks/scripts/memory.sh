echo "  $(grep "^Cached:" /proc/meminfo | awk '{print $2/1024}')MB "
