FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI_append_mihawk += "file://mihawk.cfg"
SRC_URI_append_mihawk += "file://0001-aspeed-bmc-opp-mihawk.patch"