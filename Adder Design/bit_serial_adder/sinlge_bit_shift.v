`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:50:52 08/16/2018 
// Design Name: 
// Module Name:    sinlge_bit_shift 
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
module single_bit_shift(
    input [7:0] data,
	 input clk,
    input rst,
    output reg [7:0] out
    );
	 always @(posedge clk or posedge rst) begin
		if(rst == 1) begin
			out[7:0] <= data[7:0];
		end
		else begin
			out <= {out[0] , out [7:1]};
		end
	 end
endmodule
