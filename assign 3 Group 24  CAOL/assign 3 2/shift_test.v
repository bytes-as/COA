module shift_test;
	// Inputs
	reg [7:0] in;
	reg [2:0] shift;
	reg direction;
	// Outputs
	wire [7:0] output_shifted;
	// Instantiate the Unit Under Test (UUT)
	shift uut (
		.in(in), 
		.shift(shift), 
		.direction(direction), 
		.output_shifted(output_shifted)
	);
	initial begin
		// Initialize Inputs
		in = 0;
		shift = 0;
		direction = 0;
		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here
		in = 8'b11110000;
		shift = 3'b001;
		direction = 0;
	end
endmodule
