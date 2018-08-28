RDEPENDS_${PN}-inventory += "openpower-fru-vpd openpower-occ-control phosphor-cooling-type virtual/obmc-gpio-presence"
RDEPENDS_${PN}-fan-control += "witherspoon-fan-watchdog"
RDEPENDS_${PN}-extras += "witherspoon-pfault-analysis witherspoon-power-supply-sync phosphor-webui"
RDEPENDS_${PN}-logging += "rsyslog phosphor-rsyslog-config"

${PN}-software-extras_df-obmc-ubi-fs += "phosphor-software-manager-sync"
