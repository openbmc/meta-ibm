FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

SRC_URI_witherspoon += "file://config.json"

do_install_append_witherspoon() {
        install -d ${D}/${datadir}/phosphor-fan-presence/monitor/
        install -m 0644 ${WORKDIR}/config.json ${D}/${datadir}/phosphor-fan-presence/monitor/
}

FILES_${PN}_append_witherspoon = " ${datadir}/phosphor-fan-presence/monitor/config.json"
