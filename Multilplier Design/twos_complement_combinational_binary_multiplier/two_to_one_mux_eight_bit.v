`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:07:17 08/27/2018 
// Design Name: 
// Module Name:    two_to_one_mux_eight_bit 
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
module two_to_one_mux_eight_bit(
    input [7:0] in_1,
    input [7:0] in_2,
    input select_line,
    output [7:0] out
    );
	 assign out = (select_line==0)?in_1:in_2;
endmodule
