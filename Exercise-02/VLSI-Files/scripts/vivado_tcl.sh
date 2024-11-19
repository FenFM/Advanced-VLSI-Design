##############################################################
# Copyright (c) 1986-2024 Xilinx, Inc.  All rights reserved. #
##############################################################

source /opt/Xilinx/DocNav/.settings64-DocNav.sh
source /opt/Xilinx/Vivado/2023.2/.settings64-Vivado.sh
source /opt/Xilinx/Vitis/2023.2/.settings64-Vitis.sh
source /opt/Xilinx/Model_Composer/2023.2/.settings64-Model_Composer.sh
source /opt/Xilinx/Vitis_HLS/2023.2/.settings64-Vitis_HLS.sh

if [ $# -eq 0 ]; then
	vivado -nojournal -nolog -mode tcl -notrace
else
	vivado -nojournal -nolog -mode tcl -source $1 -notrace
fi

