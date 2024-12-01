// Code your testbench here
// or browse Examples
module test;
  reg [7:0] in;
  wire[2:0] out;
  wire valid;
  integer i;
  
  priorityEncoder8 pe(in, out, valid);
  
  initial begin
    for (i=0; i<256; i=i+1) begin
      in = i;
      #1;
      if ((in>>out) == 0) begin
          $display("Err:  input %b produced %b", in, out);
      end
    end
  end
   
  
endmodule