module mux4_1_1bit_UsedInC2(in0,in1,in2,in3,s,out);
input in0,in1,in2,in3;
input [1:0] s;
output out;
wire mux1_out,mux2_out;
mux2_1_1bit_UsedInC1 mux1(in0,in1,s[0],mux1_out);
mux2_1_1bit_UsedInC1 mux2(in2,in3,s[0],mux2_out);
mux2_1_1bit_UsedInC1 mux3(mux1_out,mux2_out,s[1],out);
endmodule