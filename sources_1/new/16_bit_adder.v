`timescale 1ns / 1ps

module adder_N_bit#(parameter N=16)(

input[N-1:0]number_1_i,
input[N-1:0]number_2_i,
input carry_i,
output[N-1:0]sum_o,
output carry_o);
    
genvar i;
wire [N:0]a;

for (i=0;i<N;i = i+1) begin
full_adder fullnbitadder(
.a(number_1_i[i]),
.b(number_2_i[i]),
.c(a[i]),
.sum(sum_o[i]),
.carry(a[i+1])
);
end
    
assign a[0] = carry_i;
assign carry_o = a[N];    
    
endmodule
