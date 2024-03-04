module master_tb;
    parameter MESSAGE_LENGTH = 8;
    
    reg clk, reset;
    reg[MESSAGE_LENGTH-1:0] data;
    wire sda;
    wire scl;

    master i2c(clk, data, reset, sda, scl);

    initial begin     
        clk=0;
        forever #20 clk=~clk;
    end

    initial begin
        $dumpfile("out/master.vcd");
        $dumpvars(4, data, clk, sda, scl, reset, i2c.count);
        $display("start");
        reset=0;
        #50     
        reset=1;
        data=8'b01011111;
        #800
        data=8'b10010101;
        #800
        data=8'b11110000;
        #800;
        data=8'b00001111;
        #800
        $display("finish");
        $finish;
    end
    
endmodule