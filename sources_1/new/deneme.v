`timescale 1ns / 1ps

module half_adder(
input a,        //Toplanacak 1 bit
input b,        //Toplanacak 1 bit
output sum,     //sum
output carry    //carry
);

assign sum = a ^ b;

assign carry = a & b;


endmodule
