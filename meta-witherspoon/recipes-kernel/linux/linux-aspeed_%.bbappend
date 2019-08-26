FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI_append_ibm-ac-server = " file://witherspoon.cfg"
SRC_URI_append_mihawk = " file://mihawk.cfg"
SRC_URI_append_witherspoon-128 = " file://0001-ARM-dts-Aspeed-Witherspoon-128-Update-BMC-partitioni.patch"
SRC_URI_append_rainier = " \
    file://0001-arm-dts-add-a-g5-flash-ip.patch \
    file://0002-arm-dts-aspeed-add-Rainier-system.patch \
    file://rainier.cfg \
    "
