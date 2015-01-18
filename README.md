Proiect SA-VLSI: Sumator BCD
=====================


Sumator BCD 1 digit + 2 digit in Verilog

Compilare: 

Pentru varianta parametrizabila, cu N digits. N e configurabil din fisierul verilog

    $ make bcd_adder_Ndigit    

Pentru varianta cu 2 digiti:

    $ make bcd_adder_2digit    

Pentru varianta cu 1 digit

    $ make bcd_adder           

Rularea se poate face prin:

    $ vvp <nume_executabil>
    $ ./<nume_executabil>

Fiecare executabil ar trebui sa faca dump unui fisier ''.vcd'' care poate fi deschis cu gtkwave

    $ gtkwave <fisier_vcd>
