FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI_append_ibm-ac-server = " file://TPMEnable-default-true.override.yml"
SRC_URI_append_ibm-ac-server = " file://ClearHostSecurityKeys-default-zero.override.yml"
SRC_URI_append_mihawk = " file://TPMEnable-default-true.override.yml"
SRC_URI_append = " file://ibm_settings.override.yml"
SRC_URI_append_rainier = " file://HypervisorInterface-default-rainier.override.yml"
SRC_URI_append_witherspoon-tacoma = " file://HypervisorInterface-default-tacoma.override.yml"
SRC_URI_append_rainier = " file://ClearHostSecurityKeys-default-zero.override.yml"
SRC_URI_append_witherspoon-tacoma = " file://ClearHostSecurityKeys-default-zero.override.yml"
