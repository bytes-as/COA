module adder(
	input [6:0] a,
	input [6:0] b,
	input cin,
	output wire[7:0] sum
    );	
	assign sum = a + b + cin;
endmodule
