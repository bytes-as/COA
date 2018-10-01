module mux8b(
    input select,
    input [7:0] a0,
    input [7:0] a1,
    output wire [7:0] b
    );
	assign b = (select) ? a1 : a0 ;
endmodule
