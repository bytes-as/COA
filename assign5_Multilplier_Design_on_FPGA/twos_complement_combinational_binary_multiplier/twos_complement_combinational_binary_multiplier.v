`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:09:56 08/27/2018 
// Design Name: 
// Module Name:    twos_complement_combinational_binary_multiplier 
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
module twos_complement_combinational_binary_multiplier(
    input [7:0] a,
    input [7:0] b,
    output [15:0] out
    );
	 wire axorb;
	 wire [7:0] comp_a , comp_b , final_a , final_b;
	 wire [15:0] final_out , final_out_comp;

	 twos_complement_eight_bit tc1(a , comp_a);
	 twos_complement_eight_bit tc2(b , comp_b);
	 
	 assign axorb = a[7]^b[7];
	 
	 two_to_one_mux_eight_bit ttom1(a , comp_a , a[7] , final_a);
	 two_to_one_mux_eight_bit ttom2(b , comp_b , b[7] , final_b);
	 
	 unsigned_binary_array_multiplier ubam(final_a , final_b , final_out);

	 twos_complement_sixteen_bit tcsb(final_out, final_out_comp);
	 
	 two_to_one_mux_sixteen_bit ttomsb(final_out , final_out_comp , axorb , out);	 
	 
endmodule
