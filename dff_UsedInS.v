module dff_UsedInS(clk,rst,in,out);
input clk,rst,in;
output reg out;
  always@(posedge clk, rst) begin
    if (rst) out <= 1'b0;
    else out <= in;
  end
endmodule