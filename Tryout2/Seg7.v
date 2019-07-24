module Seg7(
        output reg      [7:0] seg,
        output reg      [3:0] dig,
        input               clk,
        input [3:0] D3,
        input [3:0] D2,
        input [3:0] D1,
        input [3:0] D0
        );     
       
        reg [3:0] disp_dat;
       
        initial
        begin
                dig= 4'b1110;
        end 
       
        // scan digits
        always @ (posedge clk)
        begin
                dig = {dig[2:0],dig[3]};
                case (dig)
                        4'b1110 : disp_dat = D0;
                        4'b1101 : disp_dat = D1;
                        4'b1011 : disp_dat = D2;
                        4'b0111 : disp_dat = D3;
                        default : disp_dat = 4'hf;
                endcase
        end 

        // scan display
        always @ (disp_dat)
        begin
                case (disp_dat)
                        4'h0 : seg = 8'hc0; //"0"
                        4'h1 : seg = 8'hf9; //"1"
                        4'h2 : seg = 8'ha4; //"2"
                        4'h3 : seg = 8'hb0; //"3"
                        4'h4 : seg = 8'h99; //"4"
                        4'h5 : seg = 8'h92; //"5"
                        4'h6 : seg = 8'h82; //"6"
                        4'h7 : seg = 8'hf8; //"7"
                        4'h8 : seg = 8'h80; //"8"
                        4'h9 : seg = 8'h90; //"9"
                        4'ha : seg = 8'h88; //"a"
                        4'hb : seg = 8'h83; //"b"
                        4'hc : seg = 8'hc6; //"c"
                        4'hd : seg = 8'ha1; //"d"
                        4'he : seg = 8'h86; //"e"
                        4'hf : seg = 8'h8e; //"f"
                endcase
        end //always @ (disp_dat)     
       
endmodule