show: out/master.vcd
	gtkwave out/master.vcd

out/master.vcd: out/master_tb
	vvp out/master_tb

out/master_tb: ../verilog/master_tb.v out/synth_master.v
	cp ../verilog/master_tb.v ./out/master_tb.v
	iverilog -o out/master_tb out/master_tb.v out/synth_master.v cells.v

out/synth_master.v: synth_master.ys ./out/master.v
	yosys synth_master.ys

out/master.v: ../verilog/master.v
	cp ../verilog/master.v ./out/master.v

clean:
	rm -f ./out/*