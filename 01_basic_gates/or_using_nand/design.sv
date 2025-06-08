`timescale 1ns/1ps
module or_using_nand(a,b,c,y);
  input wire a,b,c;
  output wire y;
  
  assign y = ~(~(a&a) & ~(b&b) & ~(c&c));
  
endmodule
  