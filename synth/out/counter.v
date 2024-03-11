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