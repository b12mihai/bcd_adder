module bcd_adder_Ndigit(sum,cout,x,y,cin);
	
    parameter N = 12; //number of bits required. Must be 4 * M
    parameter M = 3; //number of digits


	input [N-1:0] x,y;
	input cin;
	
	output [N-1:0] sum;
	output cout;

	wire [N:0] carry_temp;
    assign carry_temp[0] = cin;
 
    generate

        genvar i;

        for(i = 0; i < N; i=i+4) begin
            bcd_adder bcdadd(sum[i+3:i],carry_temp[i+4],x[i+3:i],y[i+3:i],carry_temp[i]);    
        end

    endgenerate

   assign cout = carry_temp[N];
endmodule
