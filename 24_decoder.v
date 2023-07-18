
module decoder2_4(en,a,b,y);
input en,a,b;
output [3:0]y;
wire na,nb; 
assign na= ~a;
assign nb= ~b;
assign y[0]= (en&na&nb);
assign y[1]= (en&na&b);
assign y[2]= (en&a&nb);
assign y[3]= (en&a&b);
endmodule