`timescale 1ns/10ps
module dfft(clk,rst,d,qout,qb);
input clk,rst,d;
output reg qout,qb;
always@(posedge(clk) or negedge(rst))
begin
if(!rst)
begin
qout<=0;
qb<=~qout;
end
else
begin
qout<=d;
qb<=~qout;
end
end
endmodule


