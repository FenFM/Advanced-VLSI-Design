$PROJECT_NAME = adder
$SIM_TOP = adder
$SIM_STEPS = 10
$SIM_TIME = "10 ns"

create_project -force -part xc7z020clg484-1 $PROJECT_NAME projects/$PROJECT_NAME

add_files [glob vhdl/*.vhd]

set_prop top {$SIM_TOP}_tb [get_filesets sim_1]

launch_simulation

remove_wave [get_waves *]
add_wave -color pink /{$SIM_TOP}_tb/correct
add_wave /{$SIM_TOP}_tb/uut/

set_property needs_save false [current_wave_config]

run $SIM_TIME
