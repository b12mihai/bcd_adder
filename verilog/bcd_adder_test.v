module Test_BCD_adder;   
    wire [3:0] s;
    wire cout;

    reg [3:0] a;
    reg [3:0] b;
    reg cin; 

    bcd_adder uut (
        s,cout,a,b,cin
   );
    
    initial begin
        a = 0;  b = 0;  cin = 0;

        //No carry, no sum over 9:
        #10; 
        	 a=4'b0000; b=4'b0000; cin=1'b0; //0 + 0
        #10  a=4'b0001; b=4'b0010; cin=1'b0; //1 + 2
        #10  a=4'b0011; b=4'b0100; cin=1'b0; //3 + 4
        #10  a=4'b0100; b=4'b0101; cin=1'b0; //4 + 5
        #10  a=4'b0010; b=4'b0110; cin=1'b0; //2 + 6
        #10  a=4'b0001; b=4'b0111; cin=1'b0; //1 + 7
        #20;

        //Carry = 1, no sum over 9:
        	 a=4'b0000; b=4'b0000; cin=1'b1; //0 + 0
        #10  a=4'b0001; b=4'b0010; cin=1'b1; //1 + 2
        #10  a=4'b0011; b=4'b0100; cin=1'b1; //3 + 4
        #10  a=4'b0100; b=4'b0101; cin=1'b1; //4 + 5
        #10  a=4'b0010; b=4'b0110; cin=1'b1; //2 + 6
        #10  a=4'b0001; b=4'b0111; cin=1'b1; //1 + 7
        #10  a=4'b0001; b=4'b1000; cin=1'b1; //1 + 8
        #20;

        //Carry = 0, sums over 9:
        	 a=4'b0111; b=4'b0100; cin=1'b0; //7 + 4
        #10  a=4'b0110; b=4'b0101; cin=1'b0; //6 + 5
        #10  a=4'b1000; b=4'b0010; cin=1'b0; //8 + 2
        #10  a=4'b1001; b=4'b0101; cin=1'b0; //9 + 5
        #20;

    end 
 
    initial begin
	    $monitor("T = %2t, a = %b, b = %b, cin = %b : Sum = %b, Cout = %b",$time, a, b, cin, s, cout);
		$dumpfile("bcd_adder.vcd");
		$dumpvars;
    end          
endmodule

