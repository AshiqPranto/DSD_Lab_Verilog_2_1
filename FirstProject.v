module HA(in1,in2,s,c);
  output s,c;
  input in1,in2;
  
  assign s = in1 ^ in2;
  assign c = in1 & in2;
  
endmodule