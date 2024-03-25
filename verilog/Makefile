show: out/j2c.vcd
	gtkwave out/j2c.vcd

out/j2c.vcd: out/j2c_tb
	vvp out/j2c_tb

out/j2c_tb: j2c_tb.v j2c.v
	iverilog -o out/j2c_tb j2c_tb.v j2c.v counter.v

clean:
	rm -f out/j2c.vcd out/j2c_tb

lint:
# https://projectf.io/posts/verilog-lint-with-verilator/
	verilator --lint-only -Wall j2c.v counter.v

