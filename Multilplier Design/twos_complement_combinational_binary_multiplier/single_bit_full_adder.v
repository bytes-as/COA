`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:23:24 08/25/2018 
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
    input cin,
    output sum,
    output cout
    );
	 assign sum = a^b^cin;
	 assign cout = ((a&b) |  ((a^b) & cin)) ;
endmodule
