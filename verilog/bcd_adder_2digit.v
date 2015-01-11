module bcd_adder_2digit(sum,cout,x,y,cin);
	
	input [7:0] x,y;
	input cin;
	
	output [7:0] sum;
	output cout;

	wire carry_temp;

	genvar i;

	//assign N = 2;

	generate
		for(i = 0; i < 2; i = i + 1)
		begin
			assign j = 1;			
		end
	endgenerate
	
	bcd_adder B1(sum[3:0],carry_temp,x[3:0],y[3:0],cin);
	bcd_adder B2(sum[7:4],cout,x[7:4],y[7:4],carry_temp);
	

endmodule