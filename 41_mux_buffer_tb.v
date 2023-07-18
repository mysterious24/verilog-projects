module  mux4x1_decoder_tb();
reg[3:0]A;
reg[1:0]S;
wire OUT;
integer i;
mux4x1_decoder UUT(A,S,OUT);
initial
begin
A = 4'b1011;
for(i=0;i<4;i=i+1)
begin
S=i;
#10;
end
end
initial
begin
#50 A=4'b0011;
for(i=0;i<4;i=i+1)
begin
S=i;
#10;
end
end
initial
begin
$monitor("Input in=%b,sel=%b,Output out =%b\N",A,S,OUT);
#100 $finish;
end
endmodule