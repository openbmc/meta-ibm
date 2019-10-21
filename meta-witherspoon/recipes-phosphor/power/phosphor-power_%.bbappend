FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

EXTRA_OEMESON += "-Ducd90160-yaml=${STAGING_DIR_HOST}${datadir}/power-sequencer/ucd90160.yaml"

DEPENDS += " power-sequencer"

PSU_MONITOR_ENV_FMT = "obmc/power-supply-monitor/power-supply-monitor-{0}.conf"
SYSTEMD_ENVIRONMENT_FILE_${PN} += "${@compose_list(d, 'PSU_MONITOR_ENV_FMT', 'OBMC_POWER_SUPPLY_INSTANCES')}"
