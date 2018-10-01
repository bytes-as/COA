`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:39:10 08/16/2018
// Design Name: 
// Module Name:    dff 
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
module dff(
	d,
	clk,
	rst, 
	q
	);
	input d, clk, rst ; 
	output q;
	reg q;
	always @ ( posedge clk or posedge rst)
	if (rst==1) begin
		q <= 1'b0;
	end  else begin
		q <= d;
	end	
endmodule
