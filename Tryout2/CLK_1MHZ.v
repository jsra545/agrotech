module CLK_1MHZ(
                input clk_in,
                output reg clk_out
        );
       
       
        reg [4:0] clk_count;
       
       
        // initial
        initial
        begin
                clk_count = 0;
                clk_out = 0;
        end 

       
        // clock counts
        always @ (posedge clk_in)
        begin
                clk_count = clk_count + 1'b1;
                if(clk_count==25) //50Mhz
                begin
                        clk_count = 0; 
                        clk_out = ~clk_out;
                end
        end
endmodule