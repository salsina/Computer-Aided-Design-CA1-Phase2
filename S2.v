module S2(D,A,B,CLR,CLK,out);
input [3:0] D;
input [1:0] A,B;
input CLR,CLK;
output out;
wire C2_out;
C2 C2_module(D,A,B,C2_out);
dff_UsedInS DFF(CLK,CLR,C2_out,out);
endmodule