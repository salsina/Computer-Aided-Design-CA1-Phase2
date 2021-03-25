module Multiplier(a,b,clk,start,rst,out);
input[3:0]a,b;
input clk,start,rst;
output wire[7:0] out;
wire Asel,Bsel,resultRes,mult_sel;
wire[1:0] ans_sel;
mult4_4 multiplier4_4(clk,resultRes,a,b,Asel,Bsel,mult_sel,ans_sel,out);//1514
controller cntlr(clk,rst,start,Asel,Bsel,mult_sel,ans_sel,resultRes);//339
endmodule
//1853