module two_comp (
	input [6:0] a ,
	output [6:0] b
	);
	assign b = (~a) + 1 ;
endmodule
