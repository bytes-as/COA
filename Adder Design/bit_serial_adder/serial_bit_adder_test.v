`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:54:02 08/18/2018
// Design Name:   serial_bit_adder
// Module Name:   /home/aion/Desktop/bit_serial_adder/serial_bit_adder_test.v
// Project Name:  bit_serial_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: serial_bit_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module serial_bit_adder_test;

	// Inputs
	reg clk;
	reg rst;
	reg [7:0] a;
	reg [7:0] b;
	reg cy_in;

	// Outputs
	wire [7:0] sum;
	wire cy_out;

	// Instantiate the Unit Under Test (UUT)
	serial_bit_adder uut (
		.clk(clk), 
		.rst(rst), 
		.a(a), 
		.b(b), 
		.cy_in(cy_in), 
		.sum(sum), 
		.cy_out(cy_out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		a = 0;
		b = 0;
		cy_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		clk = 0;  rst = 1;  a = 8'b00100100;  b = 8'b10000100;  cy_in = 0;  #100;
		clk = 1;  rst = 1;  a = 8'b00100100;  b = 8'b10000100;  cy_in = 0;  #100;
		
		clk = 0;  rst = 0;  a = 8'b00000000;  b = 8'b00000000;  cy_in = 0;  #100;
		clk = 1;  rst = 0;  a = 8'b00000000;  b = 8'b00000000;  cy_in = 0;  #100;
		
		clk = 0;  rst = 0;  a = 8'b00000000;  b = 8'b00000000;  cy_in = 0;  #100;
		clk = 1;  rst = 0;  a = 8'b00000000;  b = 8'b00000000;  cy_in = 0;  #100;
		
		clk = 0;  rst = 0;  a = 8'b00000000;  b = 8'b00000000;  cy_in = 0;  #100;
		clk = 1;  rst = 0;  a = 8'b00000000;  b = 8'b00000000;  cy_in = 0;  #100;
		
		clk = 0;  rst = 0;  a = 8'b00000000;  b = 8'b00000000;  cy_in = 0;  #100;
		clk = 1;  rst = 0;  a = 8'b00000000;  b = 8'b00000000;  cy_in = 0;  #100;
		
		clk = 0;  rst = 0;  a = 8'b00000000;  b = 8'b00000000;  cy_in = 0;  #100;
		clk = 1;  rst = 0;  a = 8'b00000000;  b = 8'b00000000;  cy_in = 0;  #100;
		
		clk = 0;  rst = 0;  a = 8'b00000000;  b = 8'b00000000;  cy_in = 0;  #100;
		clk = 1;  rst = 0;  a = 8'b00000000;  b = 8'b00000000;  cy_in = 0;  #100;
		
		clk = 0;  rst = 0;  a = 8'b00000000;  b = 8'b00000000;  cy_in = 0;  #100;
		clk = 1;  rst = 0;  a = 8'b00000000;  b = 8'b00000000;  cy_in = 0;  #100;
		
		clk = 0;  rst = 0;  a = 8'b00000000;  b = 8'b00000000;  cy_in = 0;  #100;
		clk = 1;  rst = 0;  a = 8'b00000000;  b = 8'b00000000;  cy_in = 0;  #100;
	
	end
      
endmodule

