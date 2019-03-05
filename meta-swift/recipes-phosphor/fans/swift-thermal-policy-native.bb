SUMMARY = "Thermal policy for Swift"
PR = "r1"
LICENSE = "Apache-2.0"
LIC_FILES_CHKSUM = "file://${IBMBASE}/COPYING.apache-2.0;md5=34400b68072d710fecd0a2940a0d1658"

inherit native
inherit phosphor-dbus-monitor

# TODO Uncomment once the fan configuration has been updated
# SRC_URI += "file://thermal-policy.yaml"

# do_install() {
#         install -D ${WORKDIR}/thermal-policy.yaml ${D}${config_dir}/thermal-policy.yaml
# }
