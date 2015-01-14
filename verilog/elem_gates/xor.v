module my_xor(out, a, b);

    input a, b;
    output out;
    
    supply1 vdd;
    supply0 gnd;

    wire non_a;
    
    //inversor din dreapta
    pmos pinv(non_a, vdd, a);
    nmos ninv(non_a, gnd, a);
    
    //inversorul din stanga
    pmos pinvr(out, a, b);
    nmos ninvr(out, non_a, b);
    
    //tgate centru
    pmos pcen(out, b, a);
    nmos ncen(out, b, non_a);
    
endmodule
