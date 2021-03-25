module mult2_2(in1,in2,out);
input [1:0] in1,in2;
output [3:0] out;

wire notout1,notout2,notout3,notout4;
wire and1_0out,and1_1out,and1_2out,and1_3out,and2_0out,and2_1out;

not_gate not1(notout1,in1[1]);
not_gate not2(notout2,in1[0]);
not_gate not3(notout3,in2[1]);
not_gate not4(notout4,in2[0]);

and_gate_2inputs and0(out[0],in1[0],in2[0]);
and_gate_3inputs and1_0(and1_0out,in1[1],in2[0],notout3);
and_gate_3inputs and1_1(and1_1out,in1[0],in2[1],notout4);
and_gate_3inputs and1_2(and1_2out,notout1,in1[0],in2[1]);
and_gate_3inputs and1_3(and1_3out,in1[1],notout2,in2[0]);
and_gate_3inputs and2_0(and2_0out,in2[1],in1[1],notout2);
and_gate_3inputs and2_1(and2_1out,in1[1],in2[1],notout4);
and_gate_4inputs and3(out[3],in1[1],in1[0],in2[1],in2[0]);

or_gate_4inputs or1(out[1],and1_0out,and1_1out,and1_2out,and1_3out);
or_gate_2inputs or2(out[2],and2_0out,and2_1out);

endmodule
//168