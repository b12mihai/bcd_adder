module testfulladder;

	reg a, b, cin;
	wire cout;
	wire s;

	full_adder fa(s, cout, a, b, cin);
   
    initial begin
     $dumpfile("full_adder.vcd");
	   $dumpvars;
	   $display ("Full Adder test - dumped full_adder.vcd?");

       	  a = 0; b = 0; cin = 0;
       #5 a = 0; b = 0; cin = 1;
       #5 a = 0; b = 1; cin = 0;
       #5 a = 0; b = 1; cin = 1;
       #5 a = 1; b = 0; cin = 0;
       #5 a = 1; b = 0; cin = 1;       
       #5 a = 1; b = 1; cin = 0;
       #5 a = 1; b = 1; cin = 1;
    end
	
   initial begin
        $display ("Full adder test monitor");
        $monitor(,"T=%2t, a=%b, b=%b, cin=%b, sum=%b, cout=%b \n", $time, a, b, cin, s, cout);

        //Debugging monitor - Truth table:
        //$display (" | a | b | c | co | s |" );
        //$monitor(,"| %b | %b | %b | %b | %b |", a, b, cin, cout, s);

    end

endmodule
