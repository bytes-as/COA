`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:39:12 08/18/2018 
// Design Name: 
// Module Name:    ripple_carry_adder 
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
module ripple_carry_adder(
    input [7:0] a,
    input [7:0] b,
    input cy_in,
    output [7:0] sum,
    output cy_out
    );
	 wire c1 , c2 , c3 , c4 , c5 , c6 , c7;
	 single_bit_full_adder sbfa1(a[0] , b[0] , cy_in , sum[0] , c1);
	 single_bit_full_adder sbfa2(a[1] , b[1] , c1 , sum[1] , c2);
	 single_bit_full_adder sbfa3(a[2] , b[2] , c2 , sum[2] , c3);
	 single_bit_full_adder sbfa4(a[3] , b[3] , c3 , sum[3] , c4);
	 single_bit_full_adder sbfa5(a[4] , b[4] , c4 , sum[4] , c5);
	 single_bit_full_adder sbfa6(a[5] , b[5] , c5 , sum[5] , c6);
	 single_bit_full_adder sbfa7(a[6] , b[6] , c6 , sum[6] , c7);
	 single_bit_full_adder sbfa8(a[7] , b[7] , c7 , sum[7] , cy_out);
endmodule
