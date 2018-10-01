`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:49:28 08/27/2018 
// Design Name: 
// Module Name:    twos_complement_sixteen_bit 
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
module twos_complement_sixteen_bit(
    input [15:0] in,
    output [15:0] out
    );
	 assign out = (~in) + 1;
endmodule
