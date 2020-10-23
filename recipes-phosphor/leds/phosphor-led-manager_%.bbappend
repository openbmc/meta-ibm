FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SYSTEMD_SERVICE_${PN}-ledmanager_append_rainier += "obmc-led-set-all-groups-asserted@.service"

SYSTEMD_LINK_${PN}-ledmanager_append_rainier += "../obmc-led-set-all-groups-asserted@.service:multi-user.target.wants/obmc-led-set-all-groups-asserted@false.service"

# Copies config file having arguments for led-set-all-groups-asserted.sh
SYSTEMD_ENVIRONMENT_FILE_${PN}-ledmanager_append_rainier +="obmc/led/set-all/groups/config"
