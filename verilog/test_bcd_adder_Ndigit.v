module Test_BCD_adder_Ndigit;   
    wire [11:0] s;
    wire cout;

    reg [11:0] a;
    reg [11:0] b;
    reg cin; 

    bcd_adder_Ndigit uut (
        s,cout,a,b,cin
   );
    
    initial begin
        a = 0;  b = 0;  cin = 0;

        #10; 
        	 a=12'b010010011001; b=12'b010010010000; cin=1'b0; //49 + 49
        #10  a=12'b000100010001; b=12'b001000011100; cin=1'b0; //11 + 21
        #10  a=12'b000001110101; b=12'b000001000000; cin=1'b0; //7 + 4
        //#10  a=8'b00000111; b=8'b00000100; cin=1'b1; //7 + 4, with carry
        //#10  a=8'b00001001; b=8'b00001001; cin=1'b0; //9 + 9
        //#10  a=8'b00001001; b=8'b00001001; cin=1'b1; //9 + 9, with carry
        //#10  a=8'b10010001; b=8'b00001001; cin=1'b0; //91 + 9
        #20;

    end 
 
    initial begin
	    $monitor("T = %2t, a = %b, b = %b, cin = %b : Sum = %b, Cout = %b",$time, a, b, cin, s, cout);
		$dumpfile("bcd_adder_Ndigit.vcd");
		$dumpvars;
    end          
endmodule

