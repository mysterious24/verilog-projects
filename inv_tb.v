module inv_tb;
wire y;
reg x;

inv DUT (x,y);
//forever #10 x=~x;

initial
begin
#5 x=0;
#5 x=1;
#5 x=0;
#5 x=1;
end
endmodule

