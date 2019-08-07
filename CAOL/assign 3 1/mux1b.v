module mux1b (
	input a ,
	input b ,
	input select ,
	output reg out
	);
	assign out = (select) ? b : a ;
endmodule
