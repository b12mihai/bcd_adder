module Test_FA_4bit;   
    wire [3:0] s;
    wire cout;

    reg [3:0] a;
    reg [3:0] b;
    reg cin; 

    full_adder_4bit uut (
        s,cout,a,b,cin
   );
    
    initial begin
        a = 0;  b = 0;  cin = 0;
        #100;
            a=4'b0001; b=4'b0000; cin=1'b0;
        #10 a=4'b1000; b=4'b0011; cin=1'b0;
        #10 a=4'b1101; b=4'b1010; cin=1'b1;
        #10 a=4'b1110; b=4'b1001; cin=1'b0;
        #10 a=4'b1111; b=4'b1010; cin=1'b0;
    end 
 
    initial begin
	    $monitor("T = %2t, a = %b, b = %b, cin = %b : Sum = %b, Cout = %b",$time, a, b, cin, s, cout);
		$dumpfile("full_adder_4bit.vcd");
		$dumpvars;
    end      
endmodule
