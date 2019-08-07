`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:43:07 08/29/2018 
// Design Name: 
// Module Name:    booths_multiplier 
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
module booths_multiplier(
  out, busy, mc, mp, clk, start
  );
   output [15:0] out;
   output busy;
   input [7:0] mc, mp;
   input clk, start;
   reg [7:0] A, Q, M;
   reg T;
   reg [3:0] count;
   wire [7:0] sum, difference;
   always @(posedge clk) begin
    if (start) begin
      A <= 8'b0;
      M <= mc;
      Q <= mp;
      T <= 1'b0;
      count <= 4'b0;
    end else  begin
      case ({Q[0], T})
        2'b0_1 :
          {A, Q, T} <= {sum[7], sum, Q};
        2'b1_0 :
          {A, Q, T} <= {difference[7], difference, Q};
        default:
          {A, Q, T} <= {A[7], A, Q};
        endcase
        count <= count + 1'b1;
    end
  end
  adder addition (sum, A, M, 1'b0);
  adder subtraction (difference, A, ~M, 1'b1);
  assign out = {A, Q};
  assign busy = (count < 8);
endmodule
