show: out/master.vcd
	gtkwave out/master.vcd

out/master.vcd: out/master_tb
	vvp out/master_tb

out/master_tb: master_tb.v master.v
	iverilog -o out/master_tb master_tb.v master.v counter.v

clean:
	rm -f out/master.vcd out/master_tb

lint:
# https://projectf.io/posts/verilog-lint-with-verilator/
	verilator --lint-only -Wall master.v counter.v

