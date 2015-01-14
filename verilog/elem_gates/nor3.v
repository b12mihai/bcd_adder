module my_nor3(out1, inA, inB, inC);

    input inA;
    input inB;
    input inC;

    output out1;

    supply1 vdd;
    supply0 gnd;

    wire w1;
    wire w2;

    nmos(out1, gnd, inA);
    nmos(out1, gnd, inB);
    nmos(out1, gnd, inC);

    pmos(out1, w1, inC);
    pmos(w1, w2, inB);
    pmos(w2, vdd, inA);    

endmodule
