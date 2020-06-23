FILESEXTRAPATHS_append := "${THISDIR}/ibm-cert:"

PACKAGECONFIG_append_witherspoon-128 = " ibm-vmi-cert"
PACKAGECONFIG_append_rainier = " ibm-vmi-cert"
PACKAGECONFIG_append_witherspoon-tacoma = " ibm-vmi-cert"

SERVICE = "vmi-certificate-manager.service"

SRC_URI += "file://vmi-certificate-manager.service"
FILES_${PN}_append = " ${WORKDIR}/ibm-cert/vmi-certificate-manager.service"

SYSTEMD_SERVICE_${PN}_append_ibm-vmi-cert = " ${SERVICE}"

pkg_postinst_${PN}_append(){
        install -D ${WORKDIR}/vmi-certificate-manager.service $D$systemd_system_unitdir
        LINK="$D$systemd_system_unitdir/multi-user.target.wants/vmi-certificate-manager.service"
        TARGET="../vmi-certificate-manager.service"
        mkdir -p $D$systemd_system_unitdir/multi-user.target.wants
        ln -s $TARGET $LINK
}

pkg_prerm_${PN}_append() {
        LINK="$D$systemd_system_unitdir/multi-user.target.wants/vmi-certificate-manager.service"
        rm $LINK
}
