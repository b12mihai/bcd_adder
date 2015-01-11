module bcd_adder(sum,cout,x,y,cin);
	
	input [3:0] x,y;
	input cin;
	
	output [3:0] sum;
	output cout;
	
	wire [3:0] z;
	wire and_up, and_down;
	wire cout_up;
	wire cout_down;
	wire [3:0] corr_factor;

	full_adder_4bit fa_up(z, cout_up, x, y, cin);
	and(and_up, z[3], z[1]);
	and(and_down, z[3], z[2]);
	or(cout, cout_up, and_up, and_down);

	assign corr_factor[0] = 0;
	assign corr_factor[3] = 0;
	assign corr_factor[1] = cout;
	assign corr_factor[2] = cout;

	full_adder_4bit fa_down(sum, cout_down, z, corr_factor, 0);

endmodule