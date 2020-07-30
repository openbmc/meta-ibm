SUMMARY = "Parse bittware-250's VPD via ibm-ipz-format FRU VPD"
DESCRIPTION = "Parse bittware-250's VPD and update it to inventory"
PR = "r1"
PV = "1.0+git${SRCPV}"

inherit meson pkgconfig
inherit openpower-fru-vpd
inherit python3native
inherit obmc-phosphor-dbus-service

LICENSE = "Apache-2.0"
LIC_FILES_CHKSUM = "file://LICENSE;md5=e3fc50a88d0a364313df4b21ef20c29e"

SRC_URI += "git://github.com/openbmc/openpower-vpd-parser;protocol=git"
SRCREV = "d5d52bb49b7232aca198885168b16f01e7d471e9"

S = "${WORKDIR}/git"

SRC_URI_append_mihawk = "file://vpd_inventory.json"
SRC_URI_append_mihawk = "file://enable-ibm-parser.sh"

DEPENDS += " \
        sdbusplus \
        phosphor-logging \
        python-mako-native \
        python-pyyaml-native \
        autoconf-archive-native \
        nlohmann-json \
        cli11 \
        phosphor-dbus-interfaces \
        "

DBUS_SERVICE_${PN}_append_mihawk = "xyz.openbmc_project.250socvpd.manager.service"
EXTRA_OEMESON_append_mihawk = " -Dibm-parser=enabled"
FILES_${PN}_append_mihawk = "${datadir}/vpd/vpd_inventory.json"

do_install_append_mihawk() {
         install -d ${D}/${datadir}/vpd/
         install -d ${D}${bindir}
         install ${WORKDIR}/enable-ibm-parser.sh ${D}${bindir}/enable-ibm-parser.sh
         install ${WORKDIR}/vpd_inventory.json ${D}/${datadir}/vpd/
}
