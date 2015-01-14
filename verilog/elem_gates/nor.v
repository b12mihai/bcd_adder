module my_nor(y, a, b);

    input a,b;
    output y;
    wire w;

    supply0 vss;
    supply1 vcc;

    pmos (w, vcc, a);
    pmos (y, w, b);
    nmos (y, vss, a);
    nmos (y, vss, b);

endmodule
