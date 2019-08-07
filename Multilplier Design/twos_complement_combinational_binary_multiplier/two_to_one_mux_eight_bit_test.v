`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:09:21 08/27/2018
// Design Name:   two_to_one_mux_eight_bit
// Module Name:   /home/aion/Documents/coa_lab/Assign 5 Multiplier/twos_complement_combinational_binary_multiplier/two_to_one_mux_eight_bit_test.v
// Project Name:  twos_complement_combinational_binary_multiplier
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: two_to_one_mux_eight_bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module two_to_one_mux_eight_bit_test;

	// Inputs
	reg [7:0] in_1;
	reg [7:0] in_2;
	reg select_line;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	two_to_one_mux_eight_bit uut (
		.in_1(in_1), 
		.in_2(in_2), 
		.select_line(select_line), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in_1 = 0;
		in_2 = 0;
		select_line = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		in_1 = 8'b00000000;
		in_2 = 8'b11111111;
		select_line = 0;
		#100;
		in_1 = 8'b00000000;
		in_2 = 8'b11111111;
		select_line = 1;

	end
      
endmodule

