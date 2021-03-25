module S1(D,A,B1,CLR,CLK,out);
input [3:0] D;
input [1:0] A;
input B1,CLR,CLK;
output out;
wire [1:0] B;
assign B = {B1,CLR};
wire C2_out;
C2 C2_module(D,A,B,C2_out);
dff_UsedInS DFF(CLK,CLR,C2_out,out);
endmodule