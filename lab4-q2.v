// Code your design here
module and2(input a,b, output c);
  assign c = (a&b);
endmodule

module or2(input a,b, output c);
  assign c = (a|b);
endmodule

module xor2(input a,b, output c);
  assign c = (a^b);
endmodule

module majority(input a,b,c, output d);
  assign d = (a&b)|(a&c)|(c&b);
endmodule
