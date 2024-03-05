//iverilog -o master_tb .\master_tb.v ..\src\*.v 
module master #(parameter NBITS = 8)( input wire clk,      
                input wire[NBITS-1:0] data,
                input wire rstn,               
                output reg sda,
                output reg scl);     

	wire[$clog2(NBITS):0] count;
	reg [NBITS-1:0] data_register;

	counter c1(clk, rstn, count);

	always @(posedge clk) begin
		if (rstn == 1) begin
			scl <= 0; 
			sda <= 0;
		end else begin 
			if (count == 0) begin
				sda <= ~clk;
				data_register <= data;
				/*$display("Start Patron 1");*/
			end else if (count > 0) begin
				sda <= data_register[count-1];
				scl <= clk;
				/*$display(data_register[count-1]);*/
			end
		end
	end

	always @(negedge clk) begin
		if (rstn == 1) begin
			scl <= 0; 
			sda <= 0;
		end else begin
			if (count == 0) begin
				sda <= ~clk;
				scl <= ~clk;
			end
			if (count > 0) begin
				scl <= clk;
			end
			if (count > 1) begin
				sda <= clk;
			end
		end
	end
endmodule  

module counter #(parameter NBITS = 8) (input clk,      
                input rstn,               
                output reg[$clog2(NBITS):0] out );     

    always @ (posedge clk) begin  
        if (rstn == 1)   
            out <= 0;  
        else if (out < NBITS)
            out <= out + 1;
        else
            out <= 0;
    end  
endmodule  

