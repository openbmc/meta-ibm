FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

EXTRA_OEMESON_append = " \
        -Doem-ibm=enabled \
        "

EXTRA_OEMESON_append_rainier = " \
        -Doem-ibm-dma-maxsize=8384512 \
        "
EXTRA_OEMESON_append_witherspoon-tacoma = " \
         -Doem-ibm-dma-maxsize=8384512 \
         "
inherit obmc-phosphor-systemd
SYSTEMD_SERVICE_${PN}_append = " pldmd.service"
SYSTEMD_SERVICE_${PN}_append = " pldm-create-phyp-nvram.service"
SYSTEMD_SERVICE_${PN}_append = " pldm-create-phyp-nvram-cksum.service"
SYSTEMD_ENVIRONMENT_FILE_${PN}_append = " pldmd"


