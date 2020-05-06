BMC_RW_MTD_ibm-ac-server = "bmc"
BMC_RW_MTD_rainier = "bmc"
BMC_RW_MTD_mihawk = "bmc"
BMC_RO_MTD_ibm-ac-server = "alt-bmc+bmc"
BMC_RO_MTD_rainier = "bmc"
BMC_RO_MTD_mihawk = "alt-bmc+bmc"
BMC_KERNEL_MTD_ibm-ac-server = "bmc"
BMC_KERNEL_MTD_rainier = "bmc"
BMC_KERNEL_MTD_mihawk = "bmc"

# Enable signature verification
EXTRA_OEMESON_append_ibm-ac-server = "-Dverify-signature=enabled"
EXTRA_OEMESON_append_rainier = " -Dverify-signature=enabled"
EXTRA_OEMESON_append_mihawk = " -Dverify-signature=enabled"

# Enable sync of persistent files to the alternate BMC chip
EXTRA_OEMESON_append_ibm-ac-server = " -Dsync-bmc-files=enabled"
PACKAGECONFIG_append_mihawk = " -Dsync-bmc-files=enabled"
