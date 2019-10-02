FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI_append_mihawk = " \
    file://phosphor-ipmi-net@eth0.socket \
    file://phosphor-ipmi-net@eth1.socket \
    "

FILES_${PN} += " \
        ${systemd_system_unitdir}/${PN}@eth0.socket \
        ${systemd_system_unitdir}/${PN}@eth1.socket \
        "

ALT_RMCPP_IFACE_mihawk  = "eth1"
SYSTEMD_SERVICE_${PN}_append_mihawk += " \
    ${PN}@${ALT_RMCPP_IFACE}.service \
    ${PN}@${ALT_RMCPP_IFACE}.socket \
    "

