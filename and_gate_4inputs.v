module and_gate_4inputs(out,in1,in2,in3,in4);
output out;
input in1,in2,in3,in4;
wire and1_2_3_out;
and_gate_3inputs and1(and1_2_3_out,in1,in2,in3);
and_gate_2inputs and2(out,and1_2_3_out,in4);
endmodule
//21