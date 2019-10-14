FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

EXTRA_OEMESON_append = " \
        -Doem-ibm=enabled \
        "

SRC_URI += "file://fileTable.json"
SRC_URI += "file://enum_attrs.json"
SRC_URI += "file://11.json"

do_install_append() {
        install -d ${D}${sysconfdir}/default/obmc/pldm/bios/
        install -d ${D}${sysconfdir}/default/obmc/pldm/pdr/
        install -m 0644 ${WORKDIR}/fileTable.json ${D}${sysconfdir}/default/obmc/pldm/
        install -m 0644 ${WORKDIR}/enum_attrs.json ${D}${sysconfdir}/default/obmc/pldm/bios/
        install -m 0644 ${WORKDIR}/11.json ${D}${sysconfdir}/default/obmc/pldm/pdr/
}
