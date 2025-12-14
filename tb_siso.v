`timescale 1ns/10ps
module tb_siso();
reg clk,rst,d;
wire qout,qb;
siso dut(clk,rst,d,qout,qb);
initial 
begin
rst=1'b0;
clk=1'b0;
d=1'b1;
#10;

rst=1'b1;
d=1'b1;
#10;
d=1'b0;
#10;
d=1'b1;
#10;
d=1'b0;
#10;
d=1'b1;
#10;
d=1'b0;
#10;
d=1'b1;
#10;
d=1'b0;
#10;
d=1'b1;
#10;
d=1'b0;
#10;
d=1'b1;
#10;
d=1'b0;
#10;
d=1'b1;
#10;
d=1'b0;
#10;
d=1'b1;
#10;
d=1'b0;
#10;

rst=1'b1;#10;
$stop();
end
always #5 clk=~clk;
endmodule
