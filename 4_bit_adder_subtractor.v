module Four_bit_adder_subtractor(s0,s1,s2,s3,cout,a0,b0,a1,b1,a2,b2,a3,b3,cin);

input a0,a1,a2,a3,b0,b1,b2,b3,cin;
output s0,s1,s2,s3,cout;

wire mood;
//assign mood = 0;
assign cin = mood;

wire b0_xor,b1_xor,b2_xor,b3_xor;

assign b0_xor = b0^mood;
assign b1_xor = b1^mood;
assign b2_xor = b2^mood;
assign b3_xor = b3^mood;

wire cout0,cout1,cout2;

FA fa0(s0,cout0,a0,b0_xor,cin);
FA fa1(s1,cout1,a1,b1_xor,cout0);
FA fa2(s2,cout2,a2,b2_xor,cout1);
FA fa3(s3,cout,a3,b3_xor,cout2);

endmodule