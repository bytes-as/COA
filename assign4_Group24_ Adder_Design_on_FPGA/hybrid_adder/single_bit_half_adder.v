`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:05:10 08/18/2018 
// Design Name: 
// Module Name:    single_bit_half_adder 
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
module single_bit_half_adder(
    input a,
    input b,
    input cy_in,
    output sum
    );
	 assign sum = a^b^cy_in;
endmodule
