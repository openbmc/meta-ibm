SUMMARY = "Phosphor LED Group Management for Romulus"
PR = "r1"
LICENSE = "Apache-2.0"
LIC_FILES_CHKSUM = "file://${IBMBASE}/COPYING.apache-2.0;md5=34400b68072d710fecd0a2940a0d1658"

inherit allarch

PROVIDES += "virtual/phosphor-led-manager-config"
S = "${WORKDIR}"

SRC_URI = "file://led.yaml"

do_install() {
    install -D led.yaml ${D}${datadir}/phosphor-led-manager/led.yaml
}

FILES_${PN} += "${datadir}/phosphor-led-manager/led.yaml"
