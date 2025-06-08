`timescale 1ns / 1ps
module and_thru_nor(a,b,c,y);
  input wire a, b, c;
  output wire y;
  
  assign y = ~(~a | ~b | ~c);
endmodule
