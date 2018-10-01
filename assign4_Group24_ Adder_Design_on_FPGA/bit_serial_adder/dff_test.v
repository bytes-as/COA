`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:43:59 08/16/2018
// Design Name:   dff
// Module Name:   /home/aion/Desktop/bit_serial_adder/dff_test.v
// Project Name:  bit_serial_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dff_test;

	// Inputs
	reg d;
	reg clk;
	reg rst;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	dff uut (
		.d(d), 
		.clk(clk), 
		.rst(rst), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		d = 0;
		clk = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
			d=0;
		clk = 1;
		#100;
		clk = 0;
		#100;
		
		d=1;
		clk = 1;
		#100;
		d = 0;
		#20;
		d = 1;
		#20;
		
		clk = 0;
		#100;
		
		rst = 1;
		#100;
		rst = 0;
		#100;
		
		d = 1;
		clk = 1;
		#20;
		d = 0;
		#20;
		d = 1;
		#20;
		clk = 0;
		#100;
		
		d = 0;
		clk = 1;
		#100;
		clk = 0;
		#100;
		
		d = 1;
		clk = 1;
		#100;
		clk = 0;
		#100;
	end
      
endmodule

