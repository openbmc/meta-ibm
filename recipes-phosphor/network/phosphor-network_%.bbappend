FILESEXTRAPATHS_prepend := "${THISDIR}/network:"
SRC_URI_append_ibm-ac-server = " file://ncsi-netlink.service"
SRC_URI_append_ibm-ac-server = "file://inventory-object-mapping-witherspoon.json"

SRC_URI_append_mihawk = " file://ncsi-netlink.service"

SYSTEMD_SERVICE_${PN}_append_ibm-ac-server = " ncsi-netlink.service"
SYSTEMD_SERVICE_${PN}_append_mihawk = " ncsi-netlink.service"

FILES_${PN} += "${datadir}/network/*.json"

do_install_append_ibm-ac-server() {
    install -d ${D}${systemd_system_unitdir}
    install -m 0644 ${WORKDIR}/ncsi-netlink.service ${D}${systemd_system_unitdir}
    install -d ${D}${datadir}/network/
    install -m 0644 ${WORKDIR}/inventory-object-mapping-witherspoon.json ${D}${datadir}/network/config.json
}
do_install_append_mihawk() {
    install -d ${D}${systemd_system_unitdir}
    install -m 0644 ${WORKDIR}/ncsi-netlink.service ${D}${systemd_system_unitdir}
}
