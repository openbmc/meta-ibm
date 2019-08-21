FILESEXTRAPATHS_prepend_append_mihawk:= " ${THISDIR}/${BPN}:"
SYSTEMD_SERVICE_${PN}_append_ibm-ac-server = " first-boot-set-mac@eth0.service"
SYSTEMD_SERVICE_${PN}_append_mihawk = " first-boot-set-mac@eth.service"
