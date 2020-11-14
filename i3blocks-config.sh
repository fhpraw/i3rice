# i3blocks configuration file
#
# The i3blocks man page describes the usage of the binary,
# and its website describes the configuration:
#
#     https://vivien.github.io/i3blocks


# Global properties
separator=false
separator_block_width=2

# [documentation]
# full_text=Documentation
# website=https://vivien.github.io/i3blocks
# command=xdg-open "$website"
# color=#f12711

[wifi]
label= 
command=echo -e " $(nmcli connection show --active | awk 'FNR == 2 {print $1}') "
interval=60

[batere]
label= 
background=#282828
color=#ebdbb2
command=echo -e " $(acpi -b | sed -E 's/.* ([0-9]+%).*/\1/') "
interval=60

[waktu]
background=#282828
color=#ebdbb2
command=date '+%a, %d %b %Y %l:%M %p '
interval=60
