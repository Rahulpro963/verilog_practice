`timescale 1ns/1ps
module bcd2gray(b3,b2,b1,b0,g3,g2,g1,g0);
  input wire b3, b2, b1, b0;
  output wire g3, g2, g1, g0;
  
  assign g3 = b3;
  assign g2 = b3^b2;
  assign g1 = b2^b1;
  assign g0 = b1^b0;
  
endmodule