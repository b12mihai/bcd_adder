IVV=iverilog

bcd_adder_Ndigit: full_adder.v full_adder_4bit.v bcd_adder.v bcd_adder_Ndigit.v test_bcd_adder_Ndigit.v
	$(IVV) $^ -o $@

bcd_adder_2digit: full_adder.v full_adder_4bit.v bcd_adder.v bcd_adder_2digit.v test_bcd_adder_2digit.v
	$(IVV) $^ -o $@

run2digit: bcd_adder_2digit
	vvp $^
	gtkwave $^.vcd

bcd_adder: full_adder.v full_adder_4bit.v bcd_adder.v bcd_adder_test.v
	$(IVV) $^ -o $@

run1digit: bcd_adder
	vvp $^
	gtkwave $^.vcd

full_adder_4bit: full_adder.v full_adder_4bit.v full_adder_4bit_test.v
	$(IVV) $^ -o $@

full_adder: full_adder.v testfulladder.v
	$(IVV) $^ -o $@

test_full_adder: full_adder
	vvp $^
	gtkwave $^.vcd

.PHONY: clean
clean:
	-rm -f *~ *.vcd a.out full_adder_4bit full_adder bcd_adder bcd_adder_2digit bcd_adder_Ndigit
