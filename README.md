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

Documentație
=====================

BCD = Binary coded decimal

## Reprezentarea numerelor naturale în BCD

Numerele sunt reprezentate printr-un număr fix de biți

| Decimal        | BCD Encoding           |
| ------------- |:-------------:| 
| 0 |	0 0 0 0 |
| 1 |	0 0 0 1 |
| 2 |	0 0 1 0 |
| 3 |	0 0 1 1 |
| 4 |	0 1 0 0 |
| 5 | 	0 1 0 1 |
| 6 |	0 1 1 0 |
| 7 |	0 1 1 1 |
| 8 |	1 0 0 0 |
| 9 |	1 0 0 1 |

Pentru numere cu două cifre, reprezentarea devine simplă: 

| Decimal        | BCD Encoding           |
| ------------- |:-------------:| 
| 10 | 0001  0000 |
| 11 | 0001  0001 |
| 12 | 0001 0010 |
| 13 | 0001 0011 |
| 14 | 0001 0100 |
| 15 | 0001 0101 |
| 16 | 0001 0110 |
| 17 | 0001 0111 |
| 18 | 0001 1000 |
| 19 | 0001 1001 |

## BCD Adder

De ce nu poate fi folosit un sumator pe 4 biți simplu? Pentru că output-ul trebuie să fie tot reprezentare BCD, dar sumatorul pe 4 biți poate depăși "range-ul" BCD. Însumarea a două numere
în BCD se poate face întâi în binar și apoi convertind rezultatul la BCD. Conversia se face însumând
cu 6 atunci când rezultatul e de 5 biți și are valoare mai mare ca 9. Exemplu:

Adunarea: 

    1001 + 1000 = 10001
      9  +    8 =    17

Conversia la BCD:

    10001 + 0110 = 00010111 => 0001 0111
    17    +    6 =       23       1    7

![1 Digit BCD adder](https://github.com/b12mihai/bcd_adder/blob/master/img/1digitBCDadder.png)

Circuitul va aduna `0110` dacă carry out e 1. 

Pentru a realiza suma `S = A + B`, unde `A` și `B` sunt de 2 cifre, folosim circuitul de mai jos, unde un modul BCD este cel din figura de mai sus. 

![2 digit BCD](https://github.com/b12mihai/bcd_adder/blob/master/img/2digitBCD.png)

## Circuitul de însumare - Full Adder

### Full Adder 1 bit

![Full Adder 1 bit](http://www.labbookpages.co.uk/teaching/evoHW/files/lab1/fullAdder.jpg)

### Full Adder 4 bit

![Full Adder 4 bit](http://www.softmath.com/tutorials-3/algebra-formulas/articles_imgs/3496/princi2.gif)
