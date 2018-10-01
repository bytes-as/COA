module mux7b (
	input [6:0] a ,
	input [6:0] b ,
	input select ,
	output wire [6:0] out
	);
	assign out = (select) ? b : a ;
endmodule
