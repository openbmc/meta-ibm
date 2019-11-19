FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

TMPL_POWERSUPPLY = "phosphor-gpio-presence@.service"
INSTFMT_POWERSUPPLY = "phosphor-gpio-presence@{0}.service"
POWERSUPPLY_TGT = "multi-user.target"
FMT_POWERSUPPLY = "../${TMPL_POWERSUPPLY}:${POWERSUPPLY_TGT}.requires/${INSTFMT_POWERSUPPLY}"

SYSTEMD_OVERRIDE_${PN}-monitor_append_mihawk += "gpio_keys.conf:phosphor-gpio-monitor@.service.d/gpio_keys.conf"
SYSTEMD_OVERRIDE_${PN}-presence_append_mihawk += "gpio_keys.conf:phosphor-gpio-presence@.service.d/gpio_keys.conf"

SYSTEMD_LINK_${PN}-presence_append_ibm-ac-server = " ${@compose_list(d, 'FMT_POWERSUPPLY', 'OBMC_POWER_SUPPLY_INSTANCES')}"
SYSTEMD_LINK_${PN}-presence_append_mihawk = " ${@compose_list(d, 'FMT_POWERSUPPLY', 'OBMC_POWER_SUPPLY_INSTANCES')}"
SYSTEMD_LINK_${PN}-presence_append_rainier = " ${@compose_list(d, 'FMT_POWERSUPPLY', 'OBMC_POWER_SUPPLY_INSTANCES')}"

POWERSUPPLY_ENV_FMT  = "obmc/gpio/phosphor-power-supply-{0}.conf"

SYSTEMD_ENVIRONMENT_FILE_${PN}-presence_append_ibm-ac-server = " ${@compose_list(d, 'POWERSUPPLY_ENV_FMT', 'OBMC_POWER_SUPPLY_INSTANCES')}"
SYSTEMD_ENVIRONMENT_FILE_${PN}-presence_append_mihawk = " ${@compose_list(d, 'POWERSUPPLY_ENV_FMT', 'OBMC_POWER_SUPPLY_INSTANCES')}"
SYSTEMD_ENVIRONMENT_FILE_${PN}-presence_append_rainier = " ${@compose_list(d, 'POWERSUPPLY_ENV_FMT', 'OBMC_POWER_SUPPLY_INSTANCES')}"
