module full_adder_4bit(sum,cout,x,y,cin);

	input [3:0] x,y;
	input cin;
	
	output [3:0] sum;
	output cout;
	
	wire d1,d2,d3;

	full_adder f1(sum[0],d1,x[0],y[0],cin);
	full_adder f2(sum[1],d2,x[1],y[1],d1);
	full_adder f3(sum[2],d3,x[2],y[2],d2);
	full_adder f4(sum[3],cout,x[3],y[3],d3);

endmodule
