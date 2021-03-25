module or_gate_4inputs(out,in1,in2,in3,in4);
output out;
input in1,in2,in3,in4;
wire or1_2_out,or3_4_out;
or_gate_2inputs or1(or1_2_out,in1,in2);
or_gate_2inputs or2(or3_4_out,in3,in4);
or_gate_2inputs or3(out,or1_2_out,or3_4_out);
endmodule
//21