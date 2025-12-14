`timescale 1ns/10ps
module siso(clk,rst,d,qout,qb);
input d;
input clk,rst;
output qout,qb;
wire [7:0] w,y;
dfft d0(clk,rst,d,w[0],y[0]);
dfft d1(clk,rst,w[0],w[1],y[1]);
dfft d2(clk,rst,w[1],w[2],y[2]);
dfft d3(clk,rst,w[2],w[3],y[3]);
dfft d4(clk,rst,w[3],w[4],y[4]);
dfft d5(clk,rst,w[4],w[5],y[5]);
dfft d6(clk,rst,w[5],w[6],y[6]);
dfft d7(clk,rst,w[6],w[7],y[7]);
assign qout=w[7];
assign qb=y[7];
endmodule
