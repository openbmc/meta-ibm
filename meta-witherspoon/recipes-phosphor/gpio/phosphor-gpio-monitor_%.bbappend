FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

TMPL = "phosphor-gpio-presence@.service"
INSTFMT = "phosphor-gpio-presence@{0}.service"
TGT = "multi-user.target"
FMT = "../${TMPL}:${TGT}.requires/${INSTFMT}"

SYSTEMD_LINK_${PN}-presence_append_ibm-ac-server = " ${@compose_list(d, 'FMT', 'OBMC_FRU_INSTANCES')}"
SYSTEMD_LINK_${PN}-presence_append_mihawk = " ${@compose_list(d, 'FMT', 'OBMC_POWER_SUPPLY_INSTANCES')}"

FRU_ENV_FMT  = "obmc/gpio/phosphor-fru-{0}.conf"

SYSTEMD_ENVIRONMENT_FILE_${PN}-presence_append_ibm-ac-server = " ${@compose_list(d, 'FRU_ENV_FMT', 'OBMC_FRU_INSTANCES')}"
SYSTEMD_ENVIRONMENT_FILE_${PN}-presence_append_mihawk = " ${@compose_list(d, 'POWERSUPPLY_ENV_FMT', 'OBMC_POWER_SUPPLY_INSTANCES')}"
