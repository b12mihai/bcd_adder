module my_or(q, a, b);
    input a;
    input b;
    output q;
    wire w;

    my_nor N(w, a, b);
    inversor I(q, w);

endmodule
