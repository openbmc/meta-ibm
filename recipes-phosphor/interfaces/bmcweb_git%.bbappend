inherit obmc-phosphor-discovery-service

REGISTERED_SERVICES_${PN} += "obmc_redfish:tcp:443:Manufacturer=IBM"
REGISTERED_SERVICES_${PN} += "obmc_rest:tcp:443:Manufacturer=IBM"
