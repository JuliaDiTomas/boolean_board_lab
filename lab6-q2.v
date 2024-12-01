`timescale 1ns / 1ps

// Inputs 4 bit number and outputs 8 bit number to display input as hex digit on Boolean board's7-segment display
module hexEncode(input [3:0] bin, output [7:0] hex);
  assign hex = (bin == 0) ? 8'b11000000 :
    (bin == 1) ? 8'b11111001 :
    (bin == 2) ? 8'b10100100 :
    (bin == 3) ? 8'b10110000 :
    (bin == 4) ? 8'b10011001 :
    (bin == 5) ? 8'b10010010 :
    (bin == 6) ? 8'b10000010 :
    (bin == 7) ? 8'b11111000 :
    (bin == 8) ? 8'b10000000 :
    (bin == 9) ? 8'b10010000 :
    (bin == 10) ? 8'b10001000 :
    (bin == 11) ? 8'b10000011 :
    (bin == 12) ? 8'b11000110 :
    (bin == 13) ? 8'b10100001 :
    (bin == 14) ? 8'b10000110 :
    (bin == 15) ? 8'b10001110 : 8'b11111111;
      
endmodule    


module lab6(
   input mclk,
   input [15:0] sw, //Sixteen switches
   //output [15:0] led, //Sixteen LEDs
   output [7:0] D1_seg, D0_seg, //Seven segment displays
   output [3:0] D1_a, D0_a //Display selector (0 means that seven-segment display digit is on)
);
    
 hexEncode h(sw[3:0], D1_seg[7:0]);
 assign D1_a = 4'b1110;
 assign D0_a = 4'b1111;
  
endmodule