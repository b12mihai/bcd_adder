IVV=iverilog

bcd_adder_Ndigit: elem_gates/* full_adder.v full_adder_4bit.v bcd_adder.v bcd_adder_Ndigit.v test_bcd_adder_Ndigit.v
	$(IVV) $^ -o $@

bcd_adder_2digit: elem_gates/* full_adder.v full_adder_4bit.v bcd_adder.v bcd_adder_2digit.v test_bcd_adder_2digit.v
	$(IVV) $^ -o $@

bcd_adder: elem_gates/* full_adder.v full_adder_4bit.v bcd_adder.v bcd_adder_test.v
	$(IVV) $^ -o $@

full_adder_4bit: elem_gates/* full_adder.v full_adder_4bit.v full_adder_4bit_test.v
	$(IVV) $^ -o $@

full_adder: elem_gates/* full_adder.v testfulladder.v
	$(IVV) $^ -o $@

.PHONY: clean
clean:
	-rm -f *~ *.vcd a.out full_adder_4bit full_adder bcd_adder bcd_adder_2digit bcd_adder_Ndigit
