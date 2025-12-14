read library -liberty /home/install/FOUNDRY/digital/90nm/dig/lib/slow.lib
read design -verilog siso.v -golden
read design -verilog siso_netlist.v -revised
set system mode lec
compare
exit
