//full adder using data flow model test bench.
module full_adder_data_tb();
reg a,b,cin;
wire s,cout;
full_adder_data DUT(a,b,cin,s,cout);
initial
begin
a=0;b=0;cin=0;#100;
a=0;b=0;cin=1;#100;
a=0;b=1;cin=0;#100;
a=0;b=1;cin=1;#100;
a=1;b=0;cin=0;#100;
a=1;b=0;cin=1;#100;
a=1;b=1;cin=0;#100;
a=1;b=1;cin=1;#100;
end 
endmodule

