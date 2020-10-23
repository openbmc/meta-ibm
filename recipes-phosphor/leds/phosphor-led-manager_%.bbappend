FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

include phosphor-led-manager-systemd-links.inc

SYSTEMD_SERVICE_${PN}-ledmanager_append_rainier += "obmc-led-set-all-groups-asserted@.service"

# Copies config file having arguments for led-set-all-groups-asserted.sh
SYSTEMD_ENVIRONMENT_FILE_${PN}-ledmanager_append_rainier +="obmc/led/set-all/groups/config"
