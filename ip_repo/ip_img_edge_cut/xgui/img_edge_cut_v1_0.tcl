# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "CUT_COLUMN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CUT_ROW" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IMG_HEIGHT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IMG_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.CUT_COLUMN { PARAM_VALUE.CUT_COLUMN } {
	# Procedure called to update CUT_COLUMN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CUT_COLUMN { PARAM_VALUE.CUT_COLUMN } {
	# Procedure called to validate CUT_COLUMN
	return true
}

proc update_PARAM_VALUE.CUT_ROW { PARAM_VALUE.CUT_ROW } {
	# Procedure called to update CUT_ROW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CUT_ROW { PARAM_VALUE.CUT_ROW } {
	# Procedure called to validate CUT_ROW
	return true
}

proc update_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to update DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to validate DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.IMG_HEIGHT { PARAM_VALUE.IMG_HEIGHT } {
	# Procedure called to update IMG_HEIGHT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IMG_HEIGHT { PARAM_VALUE.IMG_HEIGHT } {
	# Procedure called to validate IMG_HEIGHT
	return true
}

proc update_PARAM_VALUE.IMG_WIDTH { PARAM_VALUE.IMG_WIDTH } {
	# Procedure called to update IMG_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IMG_WIDTH { PARAM_VALUE.IMG_WIDTH } {
	# Procedure called to validate IMG_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.CUT_COLUMN { MODELPARAM_VALUE.CUT_COLUMN PARAM_VALUE.CUT_COLUMN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CUT_COLUMN}] ${MODELPARAM_VALUE.CUT_COLUMN}
}

proc update_MODELPARAM_VALUE.CUT_ROW { MODELPARAM_VALUE.CUT_ROW PARAM_VALUE.CUT_ROW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CUT_ROW}] ${MODELPARAM_VALUE.CUT_ROW}
}

proc update_MODELPARAM_VALUE.DATA_WIDTH { MODELPARAM_VALUE.DATA_WIDTH PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DATA_WIDTH}] ${MODELPARAM_VALUE.DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.IMG_WIDTH { MODELPARAM_VALUE.IMG_WIDTH PARAM_VALUE.IMG_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IMG_WIDTH}] ${MODELPARAM_VALUE.IMG_WIDTH}
}

proc update_MODELPARAM_VALUE.IMG_HEIGHT { MODELPARAM_VALUE.IMG_HEIGHT PARAM_VALUE.IMG_HEIGHT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IMG_HEIGHT}] ${MODELPARAM_VALUE.IMG_HEIGHT}
}

