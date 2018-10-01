`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:11:28 08/16/2018 
// Design Name: 
// Module Name:    serial_to_parallel 
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
module serial_to_parallel(
    input in,
    input clk,
    input rst,
    output reg [7:0] out
    );
	 
	 reg [6:0] out_temp;
	  always @(posedge clk or posedge rst) begin
		if(rst == 1) begin
			out[7:0] <= 8'd0;
			out_temp[6:0] <= 7'd0;
		end
		else begin
			out[7:0] <= {in , out_temp[6:0]};
		end
	 end
	 
	 always @(negedge clk)	begin
	 	out_temp[6:0] <= out[7:1];
	 end
	 
endmodule
