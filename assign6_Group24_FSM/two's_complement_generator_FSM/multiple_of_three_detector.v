`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:31:01 08/30/2018 
// Design Name: 
// Module Name:    multiple_of_three_detector 
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
module multiple_of_three_detector(
	 input clk,
	 input rst,
	 input in,
	 output reg out
    );
	 reg [1:0] state;
	 always @(posedge clk or posedge rst)	begin
			if(rst == 1)	begin
				out <= 0;
				state <= 2'b00;
			end
			else	begin
				case (state[1:0])
					2'b00:	begin
									out <= ~in;
									state <= {1'b0 , in};
								end
					2'b01:	begin
									out <= in;
									state <= {~in , 1'b0};
								end
					2'b10:	begin
									out <= 1'b0;
									state <= {in , ~in};
								end
					default :begin
									out <= 1'b0;
									state <= 2'b00;
								end
				endcase
			end
	 end
endmodule
