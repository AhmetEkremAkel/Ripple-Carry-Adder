`timescale 1ns / 1ps

module full_adder(
input a,b,c,
output sum,
output carry);

wire a_1,b_1,sum_1,carry_1;
wire a_2,b_2,sum_2,carry_2;

half_adder adder_1(
.a(a_1),
.b(b_1),
.sum(sum_1),
.carry(carry_1)
); 


half_adder adder_2(
.a(a_2),
.b(b_2),
.sum(sum_2),
.carry(carry_2)
);

assign a_1 = a;
assign b_1 = b;
assign b_2 = c;
assign a_2 = sum_1;


assign sum = sum_2;
assign carry = carry_1 | carry_2;


endmodule
