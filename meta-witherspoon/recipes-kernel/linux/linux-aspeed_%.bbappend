FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI += "file://witherspoon.cfg"
SRC_URI += "file://0001-witherspoon.dts-Enable-the-USB-vhub-device.patch"
SRC_URI += "file://0001-nbd-Fix-disconnect.patch"
