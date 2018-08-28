FILESEXTRAPATHS_append := "${THISDIR}/${PN}:"

# Package configuration
LOGGING_PACKAGES += " \
        phosphor-rsyslog-config \
"

RDEPENDS_phosphor-rsyslog-config += "sdbusplus phosphor-dbus-interfaces"
DBUS_SERVICE_phosphor-rsyslog-config += "xyz.openbmc_project.Syslog.Config.service"
FILES_phosphor-rsyslog-config += " \
        ${sbindir}/phosphor-rsyslog-conf \
"
