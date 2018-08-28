FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
FILES_${PN} += "${libdir}/tmpfiles.d/linux-cf-fsi-fw.conf"

SRC_URI += "file://linux-cf-fsi-fw.conf"

do_install_append() {
	install -d ${D}${libdir}/tmpfiles.d
	install -m 0755 ${WORKDIR}/linux-cf-fsi-fw.conf ${D}${libdir}/tmpfiles.d/linux-cf-fsi-fw.conf
}
