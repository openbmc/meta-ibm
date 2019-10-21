SUMMARY = "Parser for IBM based IPZ and Keyword format FRU VPD"
DESCRIPTION = "Parse FRU VPD and update into DBUS"
PR = "r1"
PV = "1.0+git${SRCPV}"

#inherit meson pkgconfig
inherit autotools pkgconfig
inherit obmc-phosphor-systemd

DEPENDS += "sdbusplus" 
DEPENDS += "phosphor-logging" 
DEPENDS += "autoconf-archive-native"
DEPENDS += "cli11"

require ${PN}.inc

SRC_URI += " file://70-ibm-vpd-parser.rules"

S = "${WORKDIR}/git"

SYSTEMD_SERVICE_${PN} := "ibm-vpd-parser@.service"
EXTRA_OECONF := " --enable-ibm-parser "

do_install() {
	install -d ${D}/${base_libdir}/udev/rules.d/
        install ${WORKDIR}/70-ibm-vpd-parser.rules ${D}/${base_libdir}/udev/rules.d/
}
