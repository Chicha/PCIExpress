setMode -bs
setMode -bs
setMode -bs
setCable -port svf -file "/home/ise/Downloads/V6_365T/V6_365T/PCIE_riffa/V6_pcie/riffa.svf"
setMode -bs
setMode -bs
setMode -ss
setMode -sm
setMode -hw140
setMode -spi
setMode -acecf
setMode -acempm
setMode -pff
setMode -bs
setMode -bs
setMode -bs
setCable -port svf -file "/home/ise/Downloads/V6_365T/V6_365T/PCIE_riffa/V6_pcie/riffa.svf"
addDevice -p 1 -file "/home/ise/Downloads/V6_365T/V6_365T/PCIE_riffa/V6_pcie/riffa_top_v6_pcie_v2_5.bit"
Program -p 1 
setMode -bs
setMode -bs
setMode -ss
setMode -sm
setMode -hw140
setMode -spi
setMode -acecf
setMode -acempm
setMode -pff
setMode -bs
saveProjectFile -file "/home/ise/edif_flow//auto_project.ipf"
setMode -bs
deleteDevice -position 1
setMode -bs
setMode -ss
setMode -sm
setMode -hw140
setMode -spi
setMode -acecf
setMode -acempm
setMode -pff
