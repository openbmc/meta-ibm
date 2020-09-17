WITHERSPOON_IMAGE_FEATURES = " \
        obmc-bmc-state-mgmt \
        obmc-bmcweb \
        obmc-chassis-mgmt \
        obmc-chassis-state-mgmt \
        obmc-console \
        obmc-dbus-monitor \
        obmc-devtools \
        obmc-fan-control \
        obmc-fan-mgmt \
        obmc-flash-mgmt \
        obmc-host-ctl \
        obmc-host-ipmi \
        obmc-host-state-mgmt \
        obmc-ikvm \
        obmc-inventory \
        obmc-leds \
        obmc-logging-mgmt \
        obmc-remote-logging-mgmt \
        obmc-rng \
        obmc-net-ipmi \
        obmc-sensors \
        obmc-software \
        obmc-system-mgmt \
        obmc-user-mgmt \
        obmc-user-mgmt-ldap \
        read-only-rootfs \
        ssh-server-dropbear \
        obmc-debug-collector \
        obmc-network-mgmt \
        obmc-settings-mgmt \
        "
# Since multiple machines are using the witherspoon override, the indirection
# here is required to specify the image features for witherspoon only (and not
# tacoma).
IMAGE_FEATURES_witherspoon = "${@bb.utils.contains('MACHINE', 'witherspoon', '${WITHERSPOON_IMAGE_FEATURES}', '', d)}"
