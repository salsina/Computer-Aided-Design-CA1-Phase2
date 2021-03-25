module mux2_1_1bit_UsedInC1(in1,in2,s,out);
input in1,in2;
input s;
output out;

wire not_s,and1out,and2out;
not not1(not_s,s);

and and1_0(and1out,not_s,in1);
and and2_0(and2out,s,in2);

or or1(out,and1out,and2out);
endmodule