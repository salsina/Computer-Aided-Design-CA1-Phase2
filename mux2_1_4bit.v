module mux2_1_4bit(in1,in2,s,out);
input [3:0] in1,in2;
input s;
output [3:0] out;

wire not_s,and1_3out,and1_2out,and1_1out,and1_0out,and2_3out,and2_2out,and2_1out,and2_0out;
not_gate not1(not_s,s);

and_gate_2inputs and1_3(and1_3out,s,in1[3]);
and_gate_2inputs and1_2(and1_2out,s,in1[2]);
and_gate_2inputs and1_1(and1_1out,s,in1[1]);
and_gate_2inputs and1_0(and1_0out,s,in1[0]);

and_gate_2inputs and2_3(and2_3out,not_s,in2[3]);
and_gate_2inputs and2_2(and2_2out,not_s,in2[2]);
and_gate_2inputs and2_1(and2_1out,not_s,in2[1]);
and_gate_2inputs and2_0(and2_0out,not_s,in2[0]);

or_gate_2inputs or3(out[3],and1_3out,and2_3out);
or_gate_2inputs or2(out[2],and1_2out,and2_2out);
or_gate_2inputs or1(out[1],and1_1out,and2_1out);
or_gate_2inputs or0(out[0],and1_0out,and2_0out);
endmodule
//91