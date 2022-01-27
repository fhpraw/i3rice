echo "  $(grep "cpu" /proc/stat | head -n 1 | awk '{print ($5*100)/($2+$3+$4+$5+$6+$7+$8+$9+$10)}' | awk '{print 100-$1}')% "
