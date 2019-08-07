`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:43:49 08/18/2018
// Design Name:   eight_bit_hybrid_adder
// Module Name:   /home/aion/Documents/hybrid_adder/eight_bit_hybrid_adder_test.v
// Project Name:  hybrid_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: eight_bit_hybrid_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module eight_bit_hybrid_adder_test;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;
	reg cy_in;

	// Outputs
	wire [7:0] sum;
	wire cy_out;

	// Instantiate the Unit Under Test (UUT)
	eight_bit_hybrid_adder uut (
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
		a = 8'd635;
		b = 8'd400;
		cy_in = 0;
		#100;
		
		a = 8'd51;
		b = 8'd54;
		cy_in = 1;
		#100;
		
		a = 8'd5;
		b = 8'd6;
		cy_in = 1;
		#100;
		
		a = 8'd600;
		b = 8'd785;
		cy_in = 0;
		#100;
		
		a = 8'd513;
		b = 8'd688;
		cy_in = 0;
		#100;
	end
      
endmodule

