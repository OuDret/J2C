//iverilog -o master_tb .\master_tb.v ..\src\*.v 
module master #(parameter MESSAGE_LENGTH = 8)( input wire clk,      
                input wire[MESSAGE_LENGTH-1:0] data,
                input wire rst,               
                output reg sda,
                output reg scl);     

	wire[$clog2(MESSAGE_LENGTH*2+1):0] count;
	reg [MESSAGE_LENGTH-1:0] data_register;

	counter c1(clk, rst, count);

	always @(posedge clk) begin
		if (rst == 1) begin
			scl <= 1; 
			sda <= 1;
		end else begin
			if (count%2==1) begin 
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
			end
		end
	end
endmodule  


