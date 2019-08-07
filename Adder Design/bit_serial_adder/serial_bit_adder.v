`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:55:08 08/16/2018 
// Design Name: 
// Module Name:    serial_bit_adder 
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
module serial_bit_adder(
	 input clk,
	 input rst,
    input [7:0] a,
    input [7:0] b,
    input cy_in,
    output wire [7:0] sum,
    output wire cy_out
    );
	 wire [7:0] temp_a , temp_b;
	 wire temp_cin ,temp_cout , temp_sum;
	 //initial begin
		//sum = 8'd0;
	 //end
	 
	 //assign temp_a = a;
	 //assign temp_b = b;
	 //assign temp_cin = cy_in;
	 assign cy_out = temp_cout;
	 
	 // adding the sum of the lsb of the a and b
	 single_bit_full_adder sbfa1(temp_a[0] , temp_b[0] , temp_cin , temp_sum , temp_cout) ;
	 // storing the cout in the cin by the use of the d_flip flop
	 dff dff1(temp_cout , clk , rst , temp_cin);
	 // adding sum to the final answer
	 serial_to_parallel stp1(temp_sum , clk , rst , sum);
	 //always @(posedge clk) begin
	//	sum = temp_out;
	 //end
	 // shifting the bits of the temporary inputs
	 single_bit_shift sbs1(a, clk , rst , temp_a);
	 single_bit_shift sbs2(b, clk , rst , temp_b);
endmodule
