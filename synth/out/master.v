//iverilog -o master_tb .\master_tb.v ..\src\*.v 
module master #(parameter MESSAGE_LENGTH = 8)( input wire clk,      
                input wire[MESSAGE_LENGTH-1:0] data,
                input wire rst,               
                output reg sda,
                output reg scl);     

	wire[$clog2(MESSAGE_LENGTH*2+1):0] count;
	reg [MESSAGE_LENGTH-1:0] data_register;

	counter c1(clk, rst, count);

	integer a = 0;

	always @(posedge clk) begin
		if (rst == 1) begin
			scl <= 1; 
			sda <= 1;
		end else begin
			if (a == 0) begin 
				if (count/2 == 0) begin
					sda <= 1'b0;
					data_register <= data;
					$display("Start Patron 1");
				end else if (count/2 > 0) begin
					sda <= data_register[(count/2)-1];
					scl <= 1'b1;
					$display(count);
					$display(data_register[(count/2)-1]);
					$display("---");
				end
				a = 1;
			end else begin
				if (count/2 == 0) begin
					sda <= 1'b1;
					scl <= 1'b1;
				end
				if (count/2 > 0) begin
					scl <= 1'b0;
					sda <= sda;
				end
				if (count/2 > 1) begin
					sda <= 1'b0;
				end
				a = 0;
			end
		end
	end
endmodule  

module counter #(parameter MESSAGE_LENGTH = 8) (input clk,      
                input rst,               
                output reg[$clog2(MESSAGE_LENGTH*2+1):0] out );     

    always @ (posedge clk) begin  
        if (rst == 1)   
            out <= 0;  
        else if (out < MESSAGE_LENGTH*2+1)
            out <= out + 1;
        else
            out <= 0;
    end  
endmodule  

