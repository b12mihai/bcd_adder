module Test_BCD_adder_2digit;   
    wire [7:0] s;
    wire cout;

    reg [7:0] a;
    reg [7:0] b;
    reg cin; 

    bcd_adder_2digit uut (
        s,cout,a,b,cin
   );
    
    initial begin
        a = 0;  b = 0;  cin = 0;

        #10; 
        	 a=8'b01001001; b=8'b01001001; cin=1'b0; //49 + 49
        #10  a=8'b00010001; b=8'b00100001; cin=1'b0; //11 + 21
        #10  a=8'b00000111; b=8'b00000100; cin=1'b0; //7 + 4
        #10  a=8'b00000111; b=8'b00000100; cin=1'b1; //7 + 4, with carry
        #10  a=8'b00001001; b=8'b00001001; cin=1'b0; //9 + 9
        #10  a=8'b00001001; b=8'b00001001; cin=1'b1; //9 + 9, with carry
        #10  a=8'b10010001; b=8'b00001001; cin=1'b0; //91 + 9
        #20;

    end 
 
    initial begin
	    $monitor("T = %2t, a = %b, b = %b, cin = %b : Sum = %b, Cout = %b",$time, a, b, cin, s, cout);
		$dumpfile("bcd_adder_2digit.vcd");
		$dumpvars;
    end          
endmodule

