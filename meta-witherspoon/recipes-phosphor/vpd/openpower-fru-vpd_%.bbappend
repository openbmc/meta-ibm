do_install_append_witherspoon() {
        DEST=${D}${inventory_envdir}
        printf "\nEEPROM=/sys/devices/platform/ahb/ahb:apb/ahb:apb:bus@1e78a000/1e78a400.i2c-bus/i2c-11/11-0051/eeprom" >> ${DEST}/inventory
}

do_install_append_swift() {
        DEST=${D}${inventory_envdir}
        printf "\nEEPROM=/sys/devices/platform/ahb/ahb:apb/ahb:apb:bus@1e78a000/1e78a340.i2c-bus/i2c-8/8-0051/eeprom" >> ${DEST}/inventory
}

FILESEXTRAPATHS_prepend_rainier =+ "${THISDIR}/${PN}:"
SRC_URI_append_rainier += " file://70-ibm-vpd-parser.rules"
SYSTEMD_SERVICE_${PN}_append_rainier += "ibm-vpd-parser@.service"
EXTRA_OECONF_append_rainier += " --enable-ipz-parser "
DEPENDS_append_rainier += "cli11"

do_install_append_rainier() {
        rm -f ${D}/${base_libdir}/udev/rules.d/70-op-vpd.rules
        install ${WORKDIR}/70-ibm-vpd-parser.rules ${D}/${base_libdir}/udev/rules.d/
}

