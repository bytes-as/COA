`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:40:52 08/18/2018 
// Design Name: 
// Module Name:    eight_bit_hybrid_adder 
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
module eight_bit_hybrid_adder(
    input [7:0] a,
    input [7:0] b,
    input cy_in,
    output [7:0] sum,
    output cy_out
    );
	 wire c;
	 four_bit_carry_look_ahead_adder fbclaa1(a[3:0] , b[3:0] , cy_in , sum[3:0] , c);
	 four_bit_carry_look_ahead_adder fbclaa2(a[7:4] , b[7:4] , c , sum[7:4] , cy_out);
endmodule
