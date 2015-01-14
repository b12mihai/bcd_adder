module my_and(q, a, b);
    input a;
    input b;
    output q;
    wire w;

    my_nand N(w, a, b);
    inversor I(q, w);

endmodule
