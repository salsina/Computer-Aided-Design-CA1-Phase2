module controller(clk,rst,start,Asel,Bsel,mult_sel,ans_sel,resultRes);
input clk,rst,start;
output wire Asel,Bsel,resultRes,mult_sel;
output wire[1:0] ans_sel;

wire a,b,c,not_a,not_b,not_c;
wire Bsel_1,Bsel_2,ans_sel_0_1,ans_sel_0_2;
wire ns_a,ns_b,ns_c;
wire ns_a_1,ns_a_2,ns_b_1,ns_b_2,ns_c_1,ns_c_2,ns_c_3;

not_gate not1(not_a,a);
not_gate not2(not_b,b);
not_gate not3(not_c,c);
not_gate not4(not_Asel,Asel);
not_gate not5(not_Bsel,Bsel);
not_gate not6(not_resultRes,resultRes);

and_gate_3inputs and1(resultRes,not_a,not_b,c);//result res

and_gate_2inputs and2(Asel,a,not_b);//Asel

and_gate_3inputs and3(Bsel_1,not_a,b,c);
and_gate_3inputs and4(Bsel_2,a,not_b,c);
or_gate_2inputs or1(Bsel,Bsel_1,Bsel_2);//Bsel

and_gate_4inputs and_mult(mult_sel,not_Asel,not_Bsel,not_resultRes,not_b);//mult_sel

and_gate_3inputs and5(ans_sel[1],a,not_b,c);//ans_sel[1]
and_gate_3inputs and6(ans_sel_0_1,not_a,b,c);
and_gate_3inputs and7(ans_sel_0_2,a,not_b,not_c);
or_gate_2inputs or2(ans_sel[0],ans_sel_0_1,ans_sel_0_2);//ans_sel[0]

and_gate_3inputs and8(ns_a_1,not_a,b,c);
and_gate_3inputs and9(ns_a_2,a,not_b,not_c);
or_gate_2inputs or3(ns_a,ns_a_1,ns_a_2);//A'

and_gate_3inputs and10(ns_b_1,not_a,b,not_c);
and_gate_3inputs and11(ns_b_2,not_a,not_b,c);
or_gate_2inputs or4(ns_b,ns_b_1,ns_b_2);//B'

and_gate_3inputs and12(ns_c_1,not_a,b,not_c);
and_gate_3inputs and13(ns_c_2,not_c,start,not_a);
and_gate_3inputs and14(ns_c_3,a,not_b,not_c);
or_gate_3inputs or5(ns_c,ns_c_1,ns_c_2,ns_c_3);//C'

S2 s2_module1({3'b000,ns_a},{2'b00},{2'b00},rst,clk,a);
S2 s2_module2({3'b000,ns_b},{2'b00},{2'b00},rst,clk,b);
S2 s2_module3({3'b000,ns_c},{2'b00},{2'b00},rst,clk,c);

endmodule
//339