`include "mux8b.v"
module shift(
	input [7:0] in,
	input [2:0] shift,
	input direction,
	output wire output_shifted
	);
//	input wire[2:0] shift;
	wire[7:0] o1;
	wire[7:0] o2;
	wire[7:0] o_r;
	wire[7:0] o3;
	wire[7:0] o4;
	wire[7:0] o_l;
	wire[7:0] shifted;

	////////////////////////////////////////////////
	mux8b mux1(shift[0], .in, {in[0],in[7:1]} , o1);
	mux8b mux2(shift[1], .o1, {o1[1:0],o1[7:2]} , o2);
	mux8b mux3(shift[2], .o2, {o2[3:0],o2[7:4]} , o_l);
	////////////////////////////////////////////////
	mux8b mux4(shift[0] , in , {in[6:0] , in[7]} , o3);
	mux8b mux5(shift[1] , o3 , {o3[5:0] , o3[7:6]} , o4);
	mux8b mux6(shift[2] , o4 , {o4[3:0] , o4[7:4]} , o_r);
	
	mux8 m7(direction , o_r , o_l , shifted);
	assign output_shifted = shifted;
endmodule
