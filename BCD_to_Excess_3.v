module BCD_to_Excess_3(d0,d1,d2,d3,a0,a1,a2,a3);

input d0,d1,d2,d3;
output a0,a1,a2,a3;

assign a0 = ~d0;

wire d0not_and_d1not,d0_and_d1;
and and_0(d0not_and_d1not,~d0,~d1);
and and_1(d0_and_d1,d0,d1);

or or_0(a1,d0not_and_d1not,d0_and_d1);

wire d0_or_d1;
or or_1(d0_or_d1,d0,d1);

xor xor_0(a2,d2,d0_or_d1);

wire d2_and__d0_or_d1;
and and_2(d2_and_d0_or_d1,d2,d0_or_d1);
or or_2(a3,d3,d2_and_d0_or_d1);



endmodule