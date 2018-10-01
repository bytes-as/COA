`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:43:09 08/18/2018
// Design Name:   ripple_carry_adder
// Module Name:   /home/aion/Documents/riple_carry_adder/ripple_caryy_adder_test.v
// Project Name:  riple_carry_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ripple_carry_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ripple_caryy_adder_test;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;
	reg cy_in;

	// Outputs
	wire [7:0] sum;
	wire cy_out;

	// Instantiate the Unit Under Test (UUT)
	ripple_carry_adder uut (
		.a(a), 
		.b(b), 
		.cy_in(cy_in), 
		.sum(sum), 
		.cy_out(cy_out)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		cy_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		a = 8'd5;
		b = 8'd7;
		cy_in = 0;
		
		#100;
		a = 8'd128;
		b = 8'd256;
		cy_in = 1;
		
		#100;
		a = 8'b10000000;
		b = 8'b10010101;
		cy_in = 1;
	end
      
endmodule

