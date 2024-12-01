// Code your design here
module selector2(input a,b,s, output out);
  assign out = (a&~s)|(b&s);
endmodule