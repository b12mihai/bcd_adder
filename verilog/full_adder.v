module full_adder(s, cout, a, b, cin);

	input a;
	input b;
	input cin;

	output s;
	output cout;

	wire xor1;
	wire and_up;
	wire and_down;

	my_xor X1(xor1, a, b);
	my_xor X2(s, xor1, cin);

	my_and A1(and_up, xor1, cin);
	my_and A2(and_down, a, b);

	my_or O1(cout, and_up, and_down);
endmodule
