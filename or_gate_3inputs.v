module or_gate_3inputs(out,in1,in2,in3);
output out;
input in1,in2,in3;
wire or1_2_out;
or_gate_2inputs or1(or1_2_out,in1,in2);
or_gate_2inputs or2(out,or1_2_out,in3);
endmodule
//14