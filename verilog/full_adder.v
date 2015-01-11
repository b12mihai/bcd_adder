module full_adder(s, cout, a, b, cin);

	input a;
	input b;
	input cin;

	output s;
	output cout;

	wire xor1;
	wire and_up;
	wire and_down;

	xor(xor1, a, b);
	xor(s, xor1, cin);

	and(and_up, xor1, cin);
	and(and_down, a, b);

	or(cout, and_up, and_down);
endmodule