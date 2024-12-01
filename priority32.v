// Code your design here
// Working priority encoder
module priorityEncoder8(input [7:0]in, output [2:0] out, output valid);
  assign out = in[7] ? 3'b111 : in[6] ? 3'b110 : in[5] ? 3'b101 : in[4] ? 3'b100 : 
    in[3] ? 3'b011 : in[2] ? 3'b010 : in[1] ? 3'b001 : in[0] ? 3'b000 : 3'b000;
  assign valid = |in;
endmodule

module priorityEncoder16(input [15:0] in, output[3:0] out, output valid);
  wire [2:0] outA;
  wire [2:0] outB;
  wire validA, validB;
  priorityEncoder8 p8a(in[15:8], outA, validA);
  priorityEncoder8 p8b(in[7:0], outB, validB);
  assign out = validA ? {1'b1, outA} : {1'b0, outB};
  assign valid =| in;
endmodule

module priorityEncoder32(input [31:0] in, output[4:0] out, output valid);
  wire [3:0] outC;
  wire [3:0] outD;
  wire validC, validD;
  priorityEncoder16 p16a(in[31:16], outC, validC);
  priorityEncoder16 p16b(in[15:0], outD, validD);
  assign out = validC ? {1'b1, outC} : {1'b0, outD};
  assign valid =| in;
endmodule