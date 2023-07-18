module Priority_Encoder_tb;
reg en;              
reg [7:0]in;         
wire [2:0]out;       
Priority_Encoder PE1(en,in,out);
initial begin
    en = 1;
    #2;
    en = 0;
     in = 1;
    #2;
    in = 2;
    #2;
     in = 4;
    #2;
    in = 8;
    #2;
     in = 16;
    #2;
    in = 32;  
    #2;   
    in = 64;
    #2;
    in = 128;
    #2;
     in = 256;
    #2;
    
$finish;

end

endmodule