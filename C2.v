module C2(D,A,B,out);
input[3:0] D;
input [1:0] A,B;
output out;
wire [1:0] s;
mux4_1_1bit_UsedInC2 mux(D[0],D[1],D[2],D[3],s,out);
or or1(s[1],A[1],B[1]);
and and1(s[0],A[0],B[0]);
endmodule