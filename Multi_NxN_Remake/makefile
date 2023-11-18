all: compile simulate

compile:
	ghdl -a sequential_multiplier.vhd
	ghdl -a tb_sequential_multiplier.vhd
	ghdl -e tb_sequential_multiplier

simulate:
	ghdl -r tb_sequential_multiplier --vcd=tb_sequential_multiplier.vcd

wave:
	gtkwave tb_sequential_multiplier.vcd

clean:
	rm -f *.o *.cf tb_sequential_multiplier work-*.cf *.vcd
