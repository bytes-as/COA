`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:46:00 08/16/2018 
// Design Name: 
// Module Name:    single_bit_full_adder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module single_bit_full_adder(
    input a,
    input b,
    input cy_in,
    output sum,
    output cy_out
    );
	 assign sum = a^b^cy_in;
	 assign cy_out = (a&b) | ((a^b)&cy_in) ;
endmodule
