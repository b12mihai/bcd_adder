module Test_BCD_adder_Ndigit;   
    
    parameter N = 12; //should be same as in bcd_adder_Ndigit.v

    wire [N-1:0] s;
    wire cout;

    reg [N-1:0] a;
    reg [N-1:0] b;
    reg cin; 

    bcd_adder_Ndigit uut (
        s,cout,a,b,cin
    );

    integer i;
    
    initial begin
        a = 0;  b = 0;  cin = 0;

        #10;
            for(i = 0; i < N; i = i + 1) begin
                a[i] = i % 2;
                b[i] = i % 2;
            end
        #10;
            for(i = 0; i < N; i = i + 1) begin
                if(i % 4 == 0) begin
                    a[i] = 0; b[i] = 1;
                end
                if(i % 4 != 0) begin
                    a[i] = 1; b[i] = 0;
                end
                    
            end 
        //	 a=12'b010010011001; b=12'b010010010000; cin=1'b0; 
        //#10  a=12'b000001110101; b=12'b000001000000; cin=1'b0;
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

