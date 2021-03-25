module and_gate_3inputs(out,in1,in2,in3);
output out;
input in1,in2,in3;
wire and1_2_out;
and_gate_2inputs and1(and1_2_out,in1,in2);
and_gate_2inputs and2(out,and1_2_out,in3);
endmodule
//14