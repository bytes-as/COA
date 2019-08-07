`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:25:04 08/25/2018 
// Design Name: 
// Module Name:    unsigned_binary_array_multiplier 
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
module unsigned_binary_array_multiplier(
     input [7:0] a,
    input [7:0] b,
    output [15:0] mul
    );
	 ///////////////////////////////////////////
	 wire c1 , c2 , c3 , c4 , c5 , c6 , c7 ;
	 wire [7:0] sum1 , sum2 , sum3 , sum4 , sum5 , sum6 , sum7;
	 
	 // assigning mul[0]
	 assign mul[0] = a[0]&b[0];
	 eight_bit_carry_ripple_adder sbcra1(
		{		1'b0	 ,a[7]&b[0],a[6]&b[0],a[5]&b[0],a[4]&b[0],a[3]&b[0],a[2]&b[0],a[1]&b[0]} ,
		{a[7]&b[0],a[6]&b[1],a[5]&b[1],a[4]&b[1],a[3]&b[1],a[2]&b[1],a[1]&b[1],a[0]&b[1]} , 
		1'b0	, 
		sum1 	,
		c1
	 );
		
	 //	assigning mul[1]
	 assign mul[1] = sum1[0];
	 
	 //right_shift rs2(sum1 , c1 , sum1);
	 eight_bit_carry_ripple_adder sbcra2(
		{c1,sum1[7:1]} ,
		{a[7]&b[2],a[6]&b[2],a[5]&b[2],a[4]&b[2],a[3]&b[2],a[2]&b[2],a[1]&b[2],a[0]&b[2]} , 
		1'b0	, 
		sum2 	,
		c2
	 );
	 
	 // assigning mul[2]
	 assign mul[2] = sum2[0];
	 
	 //right_shift rs3(sum2 , c2 , sum2);
	 eight_bit_carry_ripple_adder sbcra3(
		{c2 , sum2[7:1]} ,
		{a[7]&b[3],a[6]&b[3],a[5]&b[3],a[4]&b[3],a[3]&b[3],a[2]&b[3],a[1]&b[3],a[0]&b[3]} , 
		1'b0	, 
		sum3 	,
		c3
	 );
	 
	 // assigning mul[3]
	 assign mul[3] = sum3[0];
	 
	 //right_shift rs4(sum3 , c3 , sum3);
	 eight_bit_carry_ripple_adder sbcra4(
		{c3,sum3[7:1]} ,
		{a[7]&b[4],a[6]&b[4],a[5]&b[4],a[4]&b[4],a[3]&b[4],a[2]&b[4],a[1]&b[4],a[0]&b[4]} , 
		1'b0	, 
		sum4 	,
		c4
	 );
	 
	 // assigning mul[4]
	 assign mul[4] = sum4[0];
	 
	 //right_shift rs5(sum4 , c4 , sum4);
	 eight_bit_carry_ripple_adder sbcra5(
		{c4,sum4[7:1]} ,
		{a[7]&b[5],a[6]&b[5],a[5]&b[5],a[4]&b[5],a[3]&b[5],a[2]&b[5],a[1]&b[5],a[0]&b[5]} , 
		1'b0	, 
		sum5 	,
		c5
	 );
	 
	 // assigning mul[5]
	 assign mul[5] = sum5[0];
	 
	 //right_shift rs6(sum5 , c5 , sum5);
	 eight_bit_carry_ripple_adder sbcra6(
		{c5,sum5[7:1]} ,
		{a[7]&b[6],a[6]&b[6],a[5]&b[6],a[4]&b[6],a[3]&b[6],a[2]&b[6],a[1]&b[6],a[0]&b[6]} , 
		1'b0	, 
		sum6 	,
		c6
	 );
	 
	 // assigning mul[6]
	 assign mul[6] = sum6[0];
	 
	 //right_shift rs7(sum6 , c6 , sum6);
	 eight_bit_carry_ripple_adder sbcra7(
		{c6 ,  sum6[7:1]} ,
		{a[7]&b[7],a[6]&b[7],a[5]&b[7],a[4]&b[7],a[3]&b[7],a[2]&b[7],a[1]&b[7],a[0]&b[7]} , 
		1'b0	, 
		sum7 	,
		c7
	 );
	 
	 // assinging rest of the bits
	 assign mul[15:7] = {c7,sum7};
endmodule
