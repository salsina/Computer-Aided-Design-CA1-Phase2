module C1(A,SA,B,SB,S,F);
input [1:0] A,B,S;
input SA,SB;
output F;
wire mux1_out,mux2_out,orout;
mux2_1_1bit_UsedInC1 mux1(A[0],A[1],SA,mux1_out);
mux2_1_1bit_UsedInC1 mux2(B[0],B[1],SB,mux2_out);
or or1(orout,S[0],S[1]);
mux2_1_1bit_UsedInC1 mux3(mux1_out,mux2_out,orout,F);
endmodule