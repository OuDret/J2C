module counter #(parameter MESSAGE_LENGTH = 8) (input clk,      
                input rstn,               
                output reg[$clog2(MESSAGE_LENGTH):0] out );     

    always @ (posedge clk) begin  
        if (rstn == 1)   
            out <= 0;  
        else if (out < MESSAGE_LENGTH)
            out <= out + 1;
        else
            out <= 0;
    end  
endmodule  