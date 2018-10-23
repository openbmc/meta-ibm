FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://plugins.d"

install_ibm_plugins() {

    install -m 0755 ${WORKDIR}/plugins.d/* ${D}${dreport_plugin_dir}

}

#Link in the plugins so dreport run them at the appropriate time
python link_ibm_plugins() {

    workdir = d.getVar('WORKDIR', True)
    source_path = os.path.join(workdir, 'plugins.d')
    scripts = os.listdir(source_path)

    for script in scripts:
        srcname = os.path.join(source_path, script)
        install_dreport_user_script(srcname, d)

}

do_install[postfuncs] += "install_ibm_plugins"
do_install[postfuncs] += "link_ibm_plugins"
