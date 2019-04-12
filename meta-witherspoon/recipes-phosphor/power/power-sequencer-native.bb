SUMMARY = "Power sequencer data defeinition"
PR = "r1"                                                                       
LICENSE = "Apache-2.0"                                                          
LIC_FILES_CHKSUM = "file://${PHOSPHORBASE}/COPYING.apache-2.0;md5=34400b68072d710fecd0a2940a0d1658"
                                                                                
inherit native                                                                  
                                                                                
SRC_URI += "file://witherspoon-ucd90160.yaml"
SRC_URI += "file://swift-ucd90160.yaml"
                                                                                
S = "${WORKDIR}"                                                                
                                                                                
do_install() {                                                                  
    DEST=${D}${datadir}
    install -D witherspoon-ucd90160.yaml ${DEST}/witherspoon-ucd90160.yaml
    install -D swift-ucd90160.yaml ${DEST}/swift-ucd90160.yaml
}  

