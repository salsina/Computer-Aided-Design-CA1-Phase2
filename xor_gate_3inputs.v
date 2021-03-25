module xor_gate_3inputs(out,in1,in2,in3);
output out;
input in1,in2,in3;
wire xor1_2_out;
xor_gate_2inputs xor1(xor1_2_out,in1,in2);
xor_gate_2inputs xor2(out,xor1_2_out,in3);
endmodule
//14