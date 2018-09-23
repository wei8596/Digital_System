# 
* Command
  * 選擇TOP module\
  current_design XX
  * 加入Buffer\
  set_fix_multiple_port_nets -all -buffer_constants
  * 移除空接腳位\
  remove_unconnected_ports -blast_buses [get_cells * -hier]
  * 儲存.sdf檔(2.1 or 1.0)\
  write_sdf -version 2.1 -context verilog XX.sdf
