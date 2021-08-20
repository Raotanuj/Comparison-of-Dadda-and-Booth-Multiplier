module Dutwrapper (clk,A1,B1,Mul1);

parameter N = 16;
input clk;
input [N-1:0] A1, B1;

output reg [N:0] Mul1;


reg [N-1:0] A2, B2;

wire [N:0] Mul2;

Wallace R1(A2,B2,Mul2);

always @(posedge clk)
begin
A2<=A1;
B2<=B1;
end

always @(posedge clk)
begin
Mul1<=Mul2;
end


endmodule
