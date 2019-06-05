FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += " \
           file://70-hwmon.rules \
           file://70-max31785-hwmon.rules \
           file://start_max31785_hwmon.sh \
           "

CHIPS = " \
        bus@1e78a000/i2c-bus@100/max31785@52_air \
        bus@1e78a000/i2c-bus@100/max31785@52_water \
        bus@1e78a000/i2c-bus@100/power-supply@68 \
        bus@1e78a000/i2c-bus@100/power-supply@69 \
        "
CHIPS_append_witherspoon = " \
               bus@1e78a000/i2c-bus@100/bmp280@77 \
               bus@1e78a000/i2c-bus@100/dps310@76 \
               bus@1e78a000/i2c-bus@140/ir35221@70 \
               bus@1e78a000/i2c-bus@140/ir35221@71 \
               bus@1e78a000/i2c-bus@180/ir35221@70 \
               bus@1e78a000/i2c-bus@180/ir35221@71 \
               bus@1e78a000/i2c-bus@380/tmp275@4a \
               "
CHIPS_append_swift = " \
               bus@1e78a000/i2c-bus@440/tmp275@4a \
               bus@1e78a000/i2c-bus@440/tmp275@48 \
               bus@1e78a000/i2c-bus@300/tmp275@48 \
               bus@1e78a000/i2c-bus@300/dps310@76 \
               bus@1e78a000/i2c-bus@300/si7021a20@20 \
               bus@1e78a000/i2c-bus@380/ir35219@70 \
               bus@1e78a000/i2c-bus@380/ir35221@71 \
               bus@1e78a000/i2c-bus@380/ir35221@72 \
               bus@1e78a000/i2c-bus@3c0/ir35219@70 \
               bus@1e78a000/i2c-bus@3c0/ir35221@71 \
               bus@1e78a000/i2c-bus@3c0/ir35221@72 \
               "

ITEMSFMT = "ahb/apb/{0}.conf"
ITEMS = "${@compose_list(d, 'ITEMSFMT', 'CHIPS')}"

OCCS = " \
        00--00--00--06/sbefifo1-dev0/occ-hwmon.1 \
        00--00--00--0a/fsi1/slave@01--00/01--01--00--06/sbefifo2-dev0/occ-hwmon.2 \
        "
OCCSFMT = "devices/platform/gpio-fsi/fsi0/slave@00--00/{0}.conf"
OCCITEMS = "${@compose_list(d, 'OCCSFMT', 'OCCS')}"

ENVS = "obmc/hwmon/{0}"
SYSTEMD_ENVIRONMENT_FILE_${PN} += "${@compose_list(d, 'ENVS', 'ITEMS')}"
SYSTEMD_ENVIRONMENT_FILE_${PN}_append = " ${@compose_list(d, 'ENVS', 'OCCITEMS')}"

SYSTEMD_ENVIRONMENT_FILE_max31785-msl += "obmc/hwmon-max31785/max31785.conf"
SYSTEMD_LINK_max31785-msl += "../phosphor-max31785-msl@.service:multi-user.target.wants/phosphor-max31785-msl@${MACHINE}.service"

SYSTEMD_SERVICE_${PN} += "max31785-hwmon-helper@.service"

do_install_append() {
    install -d ${D}/${base_libdir}/udev/rules.d/
    install ${WORKDIR}/70-max31785-hwmon.rules ${D}/${base_libdir}/udev/rules.d/

    install -d ${D}${bindir}
    install -m 0755 ${WORKDIR}/start_max31785_hwmon.sh ${D}${bindir}
}
