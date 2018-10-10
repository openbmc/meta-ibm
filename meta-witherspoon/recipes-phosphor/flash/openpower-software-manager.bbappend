PACKAGECONFIG_append_df-openpower-ubi-fs = " verify_pnor_signature"

EXTRA_OECONF += " \
    PNOR_MSL="v2.0.10 v2.2" \
    "
