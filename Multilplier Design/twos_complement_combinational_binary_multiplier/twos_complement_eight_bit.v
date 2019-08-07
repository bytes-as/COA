`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:06:35 08/27/2018 
// Design Name: 
// Module Name:    twos_complement_eight_bit 
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
module twos_complement_eight_bit(
    input [7:0] in,
    output [7:0] out
    );
	 assign out = (~in) + 1;
endmodule
