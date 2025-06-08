module not_thru_nand(a,y);
  input wire a;
  output wire y;
  
  assign y = ~(a & a);
endmodule