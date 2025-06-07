module nand_3ip(a,b,c,y);
  input wire a, b, c;
  output wire y;
  
  assign y = ~(a&b&c);
  
endmodule