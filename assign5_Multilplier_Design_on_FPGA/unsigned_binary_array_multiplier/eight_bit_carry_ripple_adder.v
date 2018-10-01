`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:24:01 08/25/2018 
// Design Name: 
// Module Name:    eight_bit_carry_ripple_adder 
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
module eight_bit_carry_ripple_adder(
    input [7:0] a,
    input [7:0] b,
    input cin,
    output [7:0] sum,
    output cout
    );
	 wire c1 , c2 , c3 , c4 , c5 , c6;
	 single_bit_full_adder sbfa1(a[0] , b[0] , cin , sum[0] , c1);
	 single_bit_full_adder sbfa2(a[1] , b[1] , c1 , sum[1] , c2);
	 single_bit_full_adder sbfa3(a[2] , b[2] , c2 , sum[2] , c3);
	 single_bit_full_adder sbfa4(a[3] , b[3] , c3 , sum[3] , c4);
	 single_bit_full_adder sbfa5(a[4] , b[4] , c4 , sum[4] , c5);
	 single_bit_full_adder sbfa6(a[5] , b[5] , c5 , sum[5] , c6);
	 single_bit_full_adder sbfa7(a[6] , b[6] , c6 , sum[6] , c7);
	 single_bit_full_adder sbfa8(a[7] , b[7] , c7 , sum[7] , cout);
endmodule
