`timescale 1ns / 1ps



module deneme_tb;
    reg [15:0]number_1_i;
    reg [15:0]number_2_i;
    reg carry_i;
    wire [15:0]sum_o;
    wire carry_o;         

    adder_N_bit#(.N(16)) uut (
        .number_1_i(number_1_i),
        .number_2_i(number_2_i),
        .carry_i(carry_i),
        .sum_o(sum_o),
        .carry_o(carry_o)
    );
    

    initial begin
    #10;
    number_1_i = 16'b0000111100011111;
    number_2_i = 16'b0000111100001111;
    carry_i = 0;
    #10;
    number_1_i = 16'b1000111100011111;
    number_2_i = 16'b0000111100001111;
    carry_i = 0;
    #10;
    number_1_i = 16'b1000111100011111;
    number_2_i = 16'b1111111111101111;
    carry_i = 0;
    #10;
    number_1_i = 16'b0000111100011111;
    number_2_i = 16'b0000111100001111;
    carry_i = 1;
    #10;
    number_1_i = 16'b1000111100011111;
    number_2_i = 16'b0000111100001111;
    carry_i = 1;
    #10;
    number_1_i = 16'b1000111100011111;
    number_2_i = 16'b1111111111101111;
    carry_i = 1;
    #10;
    /*
    number_1_i = 16'h0000111100001111;
    number_2_i = 16'h0000111100001111;
    carry_i = 0;
    #10;
    number_1_i = 16'h1111;
    number_2_i = 16'hafff;
    carry_i = 0;
    #10;
    number_1_i = 16'h001a;
    number_2_i = 16'hafff;
    carry_i = 0;
    #10;
    number_1_i = 16'haaaa;
    number_2_i = 16'hafff;
    carry_i = 0;
    #10;
    number_1_i = 16'haaaa;
    number_2_i = 16'hafff;
    carry_i = 0;
    #10;*/
    $finish;
    end
    
endmodule