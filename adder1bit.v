module adder1bit(a,b,cin,s,cout);
input a,b,cin;
output s,cout;

wire w1, w2, w3;

and_gate_2inputs and1(w1,a,b);
and_gate_2inputs and2(w2,a,cin);
and_gate_2inputs and3(w3,b,cin);
or_gate_3inputs or1(cout,w1,w2,w3);

xor_gate_3inputs xor1(s,a,b,cin);
endmodule
//49