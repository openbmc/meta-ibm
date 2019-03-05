Witherspoon
================

This is the Witherspoon machine layer.

Witherspoon, or AC922, is an IBM POWER9 two-socket, 2U Accelerated Compute
Server with up to 6 NVIDIA Tesla GPUs. More information can be found
[here](https://www.ibm.com/us-en/marketplace/power-systems-ac922).

This layer contains different machine configurations such as witherspoon
and swift. To build a specific configuration, set the MACHINE environment
to the desired one as follows (this is only needed once):

    export MACHINE="<machine_configuration>"; \
    export BB_ENV_EXTRAWHITE="$BB_ENV_EXTRAWHITE MACHINE"

Then build:

    bitbake obmc-phosphor-image
