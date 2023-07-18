module Priority_Encoder(en,in,out);
input en;              
input [7:0]in;         
output reg [2:0]out;   

always @(en,in)
begin
  if(!en)
  begin
    casex(in) 
       8'b1xxxxxxx : out=7;
       8'b01xxxxxx : out=6;
       8'b001xxxxx : out=5;
       8'b0001xxxx : out=4; 
       8'b00001xxx : out=3;
       8'b000001xx : out=2;
       8'b0000001x : out=1;
       8'b00000001 : out=0;    
       default :
        begin
          out = 3'bx;
        end
    endcase      
   end
end
endmodule