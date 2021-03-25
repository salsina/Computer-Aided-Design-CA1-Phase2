module not_gate(out,in);
output out;
input in;
C1 c1_gate(2'b01,in,2'b00,1'b0,2'b00,out);
endmodule
//7