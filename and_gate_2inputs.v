module and_gate_2inputs(out,in1,in2);
output out;
input in1,in2;
C1 c1_module(2'b00,in1,2'b10,in1,{in2,in2},out);
endmodule
//7