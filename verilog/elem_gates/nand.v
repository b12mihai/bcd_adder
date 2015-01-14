module my_nand(out1, inA, inB);

    input inA;
    input inB;
    output out1;
    supply1 vdd;
    supply0 vss;

    wire w;

    pmos(out1, vdd, inB);
    pmos(out1, vdd, inA);
    nmos(out1, w, inA);
    nmos( w , vss, inB); 

endmodule
