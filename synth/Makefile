show: out/j2c.vcd
	gtkwave out/j2c.vcd

out/j2c.vcd: out/j2c_tb
	vvp out/j2c_tb

out/j2c_tb: ../verilog/j2c_tb.v out/synth_j2c.v
	cp ../verilog/j2c_tb.v ./out/j2c_tb.v
	iverilog -o out/j2c_tb out/j2c_tb.v out/synth_j2c.v cells.v

out/synth_j2c.v: synth_j2c.ys ./out/j2c.v ./out/counter.v
	yosys synth_j2c.ys

out/j2c.v: ../verilog/j2c.v
	cp ../verilog/j2c.v ./out/j2c.v
	cp ../verilog/counter.v ./out/counter.v

clean:
	rm -f ./out/*

lint:
	verilator --lint-only -Wall out/j2c.v out/counter.v
