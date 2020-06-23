PACKAGECONFIG_append_rainier = " ibm-hypervisor-cert"
PACKAGECONFIG_append_witherspoon-tacoma = " ibm-hypervisor-cert"

SYSTEMD_SERVICE_${PN}_append_rainier = " hypervisor-certificate-manager.service"
SYSTEMD_SERVICE_${PN}_append_witherspoon-tacoma = " hypervisor-certificate-manager.service"
