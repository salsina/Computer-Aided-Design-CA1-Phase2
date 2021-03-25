module tb();
integer mult_number = 0;
integer i , j;
reg clk,rst,start;
reg[3:0] in1,in2;
wire[7:0] mult_output_result;
integer golden_result;
Multiplier Mult4_4(in1,in2,clk,start,rst,mult_output_result);

initial begin
    for(i=0;i<16;i=i+1) begin
      for(j=0;j<16;j=j+1)begin
        #10 rst = 1;
        #10 rst = 0;
        start = 0;
        in1 = i;
        in2 = j;
        golden_result = in1*in2;
        mult_number = mult_number+1;
        #10 start = 1;
        #10 clk = 1;
        #10 clk = 0;
        #10 clk = 1;
        start = 0;
        repeat(20)#10 clk = ~clk;
        clk = 0;
        if(mult_output_result != golden_result) begin
          $display("mismatch!  multiply number :%d      golden_result is : %d     mult_output_result is : %d",mult_number,golden_result,mult_output_result);
        end
      end
    end
end
endmodule