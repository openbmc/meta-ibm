FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

EXTRA_OEMESON_append = " \
        -Doem-ibm=enabled \
        "

SRC_URI += "file://fileTable.json"
SRC_URI += "file://host_eid"

do_install_append() {
        install -m 0644 ${WORKDIR}/fileTable.json ${D}${datadir}/pldm/
        install -m 0644 ${WORKDIR}/host_eid ${D}${datadir}/pldm/
}
