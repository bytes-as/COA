`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:53:31 08/18/2018 
// Design Name: 
// Module Name:    four_bit_carry_look_ahead_adder 
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
module four_bit_carry_look_ahead_adder(
    input [3:0] a,
    input [3:0] b,
    input cy_in,
    output [3:0] sum,
    output cy_out
    );
	 wire c1 , c2 , c3;
	 assign c1 = (a[0]&b[0]) | ((a[0]^b[0])&cy_in) ;
	 assign c2 = (a[1]&b[0]) | ((a[1]^b[1]) & ((a[0]&b[0]) | ((a[0]^b[0])&cy_in)));
	 assign c3 = (a[2]&b[2]) | ((a[2]^b[2]) & ((a[1]&b[0]) | ((a[1]^b[1]) & ((a[0]&b[0]) | ((a[0]^b[0])&cy_in)))));
	 assign cy_out = (a[3]&b[3]) | ((a[3]^b[3]) & ((a[2]&b[2]) | ((a[2]^b[2]) & ((a[1]&b[0]) | ((a[1]^b[1]) & ((a[0]&b[0]) | ((a[0]^b[0])&cy_in)))))));
	 single_bit_half_adder sbha1(a[0] , b[0] , cy_in , sum[0]);
	 single_bit_half_adder sbha2(a[1] , b[1] , c1 , sum[1]);
	 single_bit_half_adder sbha3(a[2] , b[2] , c2 , sum[2]);
	 single_bit_half_adder sbha4(a[3] , b[3] , c3 , sum[3]);
endmodule
