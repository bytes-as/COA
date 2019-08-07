`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:13:11 08/16/2018
// Design Name:   serial_to_parallel
// Module Name:   /home/aion/Desktop/bit_serial_adder/serial_to_parallel_test.v
// Project Name:  bit_serial_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: serial_to_parallel
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module serial_to_parallel_test;

	// Inputs
	reg in;
	reg clk;
	reg rst;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	serial_to_parallel uut (
		.in(in), 
		.clk(clk), 
		.rst(rst), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 0;
		clk = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		rst = 1;
		#20;
		rst = 0;
		#20;
		
		in = 1;
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		in = 0;
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		in = 1;
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		in = 1;
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		in = 0;
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		in = 1;
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		in = 0;
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		in = 1;
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		rst = 1;
		#20;
		rst = 0;
		#20;
		
		in = 1;
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		in = 1;
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		in = 0;
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		in = 0;
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		in = 1;
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		in = 0;
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		in = 0;
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		
	end
      
endmodule

