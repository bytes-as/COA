module sign_mag_adder (
	input [7:0] a ,
	input [7:0] b ,
	output [8:0] sum
	);

	wire sign_xor ;

	wire [6:0] a_comp;
	wire [6:0] b_comp;

	wire select_sum_comp;	
	assign a_comp = ~a[6:0];
	assign b_comp = ~b[6:0];

	xor(sign_xor , a[7] , b[7]);

	wire [6:0] first;
	wire [6:0] second;
	wire [7:0] add;
	wire [7:0] add_comp;
	mux7b mux7b2(a[6:0] , a_comp[6:0] , (a[7] & sign_xor) , first);
	mux7b mux7b3(b[6:0] , b_comp[6:0] , (b[7] & sign_xor) , second);

	adder adder1(first , second , sign_xor , add);
	wire select_add_comp;
	and(select_add_comp , (~add[7]) , sign_xor);
	wire [6:0] add_comp;
	two_comp 2comp1(add , add_comp);	
	mux7b mux7b4(add[6:0] , add_comp , select_sum_comp , sum[6:0]);
	
	mux1b mux1b2(add[7] , 0 , sign_xor . sum[7];
	//selecting the sign with the comparison of sign
	mx1b mux1b1(a[7] , (~add[7]) , sign_xor , sum[8]);
endmodule

