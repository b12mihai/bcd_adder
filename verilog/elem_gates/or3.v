module my_or3(q, a, b, c);

    input a;
    input b;
    input c;

    output q;
    wire w;

    my_nor3 N(w, a, b, c);
    inversor I(q, w);

endmodule
