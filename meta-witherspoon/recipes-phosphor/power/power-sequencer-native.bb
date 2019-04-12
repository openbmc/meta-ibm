SUMMARY = "Power sequencer data definition"
PR = "r1"
LICENSE = "Apache-2.0"
LIC_FILES_CHKSUM = "file://${PHOSPHORBASE}/COPYING.apache-2.0;md5=34400b68072d710fecd0a2940a0d1658"

inherit native

YAMLDIR = "${THISDIR}/power-sequencer/${MACHINE}"
FILESEXTRAPATHS_prepend := "${YAMLDIR}:"

S = "${WORKDIR}"

do_install() {
    DEST=${D}${datadir}

    install -D ${YAMLDIR}/ucd90160.yaml ${DEST}/ucd90160.yaml
}
