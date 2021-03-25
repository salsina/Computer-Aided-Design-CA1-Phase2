module flipflop(in,clk,rst,out);
input clk,rst;
input [7:0] in;
output wire[7:0] out;

S2 s2_module1({3'b000,in[0]},{2'b00},{2'b00},rst,clk,out[0]);
S2 s2_module2({3'b000,in[1]},{2'b00},{2'b00},rst,clk,out[1]);
S2 s2_module3({3'b000,in[2]},{2'b00},{2'b00},rst,clk,out[2]);
S2 s2_module4({3'b000,in[3]},{2'b00},{2'b00},rst,clk,out[3]);
S2 s2_module5({3'b000,in[4]},{2'b00},{2'b00},rst,clk,out[4]);
S2 s2_module6({3'b000,in[5]},{2'b00},{2'b00},rst,clk,out[5]);
S2 s2_module7({3'b000,in[6]},{2'b00},{2'b00},rst,clk,out[6]);
S2 s2_module8({3'b000,in[7]},{2'b00},{2'b00},rst,clk,out[7]);

endmodule
//120