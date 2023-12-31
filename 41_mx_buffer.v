//4:1 mux using tristate buffer and decoders.
module mux4x1_decoder(in,sel,out);
input[3:0]in;
input[1:0]sel;
output out;
wire [3:0]w;
wire [3:0]t;
decoder2_4 D1(sel,w);
buffer B1(in[0],w[0],t[0]);
buffer B2(in[1],w[1],t[1]);
buffer B3(in[2],w[2],t[2]);
buffer B4(in[3],w[3],t[3]);
assign out =t[sel];
endmodule

module decoder2_4(in,out);
input[1:0]in;
output[3:0]out;
assign out[0] = (~in[0])&(~in[1]);
assign out[1] = (~in[0])&(in[1]);
assign out[2] = (in[0])&(~in[1]);
assign out[3] = (in[0])&(in[1]);
endmodule
 
module buffer(in,enb,out);
input in,enb;
output reg out;
wire[3:0]t;
always@(*)
begin
if(enb)
out=in;
else
out=1'bz;
end
endmodule
