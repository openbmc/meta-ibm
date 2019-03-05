SUMMARY = "Swift board wiring"
DESCRIPTION = "Board wiring information for the Swift OpenPOWER system."
PR = "r1"
PV = "1.0+git${SRCPV}"

inherit config-in-skeleton

# TODO Are skeleton system configuration files still needed?
do_make_setup() {
        cp ${S}/Witherspoon.py \
                ${S}/obmc_system_config.py
        cat <<EOF > ${S}/setup.py
from distutils.core import setup

setup(name='${BPN}',
    version='${PR}',
    py_modules=['obmc_system_config'],
    )
EOF
}
