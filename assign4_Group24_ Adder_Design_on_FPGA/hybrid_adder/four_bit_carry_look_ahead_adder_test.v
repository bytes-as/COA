`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:07:26 08/18/2018
// Design Name:   four_bit_carry_look_ahead_adder
// Module Name:   /home/aion/Documents/hybrid_adder/four_bit_carry_look_ahead_adder_test.v
// Project Name:  hybrid_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: four_bit_carry_look_ahead_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module four_bit_carry_look_ahead_adder_test;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cy_in;

	// Outputs
	wire [3:0] sum;
	wire cy_out;

	// Instantiate the Unit Under Test (UUT)
	four_bit_carry_look_ahead_adder uut (
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
			#100;
		a = 4'd11;
		b = 4'd8;
		cy_in = 0;
		
				#100;
		a = 4'd5;
		b = 4'd4;
		cy_in = 0;
		
				#100;
		a = 4'd7;
		b = 4'd6;
		cy_in = 1;
		
		
				#100;
		a = 4'b1001;
		b = 4'b1101;
		cy_in = 1;
		
				#100;
		a = 4'b1010;
		b = 4'b1000;
		cy_in = 1;
		
				#100;
		a = 0;
		b = 0;
		cy_in = 0;
		
	end
      
endmodule

