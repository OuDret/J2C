module j2c_tb;
    parameter MESSAGE_LENGTH = 8;
    
    reg clk, reset;
    reg[MESSAGE_LENGTH-1:0] data;
    wire sda;
    wire scl;

    j2c j2c(clk, data, reset, sda, scl);

    initial begin     
        clk=0;
        forever #20 clk=~clk;
    end

    initial begin
        $dumpfile("out/j2c.vcd");
        $dumpvars(4, data, clk, sda, scl, reset, j2c.count, j2c.data_register);
        $display("start");
        reset = 0;
        #30     
        reset = 1;
        #30
        reset = 0;
        data=8'b01011111;
        #800
        data=8'b10010101;
        #800
        data=8'b11110000;
        #800;
        data=8'b00001111;
        #800
        reset = 0;
        #50     
        reset = 1;
        #50
        reset = 0;
        data=8'b01011111;
        #800
        data=8'b10010101;
        #800
        data=8'b11110000;
        #800;
        data=8'b00001111;
        #800
        reset = 0;
        #50     
        reset = 1;
        #50
        reset = 0;
        data=8'b01011111;
        #800
        data=8'b10010101;
        #800
        data=8'b11110000;
        #800;
        data=8'b00001111;
        #800
        $finish;
        $display("finish");
    end
    
endmodule