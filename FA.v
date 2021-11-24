module FA(s,cout,in1,in2,cin);

input in1,in2,cin;
output s,cout;

assign s = (in1^in2)^cin;
assign cout = (in1&in2) | (cin & (in1^in2));

endmodule