module mux2_1_8bit(in1,in2,s,out);
input [7:0] in1,in2;
input s;
output [7:0] out;

wire not_s;
wire[7:0] and1out,and2out;

not_gate no1(not_s,s);
and_gate_2inputs and1_7(and1out[7],s,in1[7]);
and_gate_2inputs and1_6(and1out[6],s,in1[6]);
and_gate_2inputs and1_5(and1out[5],s,in1[5]);
and_gate_2inputs and1_4(and1out[4],s,in1[4]);
and_gate_2inputs and1_3(and1out[3],s,in1[3]);
and_gate_2inputs and1_2(and1out[2],s,in1[2]);
and_gate_2inputs and1_1(and1out[1],s,in1[1]);
and_gate_2inputs and1_0(and1out[0],s,in1[0]);

and_gate_2inputs and2_7(and2out[7],not_s,in2[7]);
and_gate_2inputs and2_6(and2out[6],not_s,in2[6]);
and_gate_2inputs and2_5(and2out[5],not_s,in2[5]);
and_gate_2inputs and2_4(and2out[4],not_s,in2[4]);
and_gate_2inputs and2_3(and2out[3],not_s,in2[3]);
and_gate_2inputs and2_2(and2out[2],not_s,in2[2]);
and_gate_2inputs and2_1(and2out[1],not_s,in2[1]);
and_gate_2inputs and2_0(and2out[0],not_s,in2[0]);

or_gate_2inputs or7(out[7],and1out[7],and2out[7]);
or_gate_2inputs or6(out[6],and1out[6],and2out[6]);
or_gate_2inputs or5(out[5],and1out[5],and2out[5]);
or_gate_2inputs or4(out[4],and1out[4],and2out[4]);
or_gate_2inputs or3(out[3],and1out[3],and2out[3]);
or_gate_2inputs or2(out[2],and1out[2],and2out[2]);
or_gate_2inputs or1(out[1],and1out[1],and2out[1]);
or_gate_2inputs or0(out[0],and1out[0],and2out[0]);

endmodule
//175