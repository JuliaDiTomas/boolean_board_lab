// Code your testbench here
// or browse Examples
module test;
  reg [31:0] in;
  wire[4:0] out;
  wire valid;
  integer i;
  
  priorityEncoder32 pe(in, out, valid);
  
  initial begin
    $monitor("Input %b produced %b, %b", in, out, valid);
    for (i=0; i<10; i=i+1) begin
      in = $random;
      #1;
    end
  end
   
  
endmodule