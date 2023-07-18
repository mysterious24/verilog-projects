//full adder using data flow model.
module full_adder_data(
input a,b,cin,
output s ,cout
);
assign s=(a^b^cin);
assign cout=(a&b)|(b&cin)|(cin&a);
endmodule

