module not_thru_nandtb();
  reg b;
  wire c;
  
  not_thru_nand uut(
    .a(b),
    .y(c));
 
  initial begin 
    b = 0; #10
    b = 1; #10
  $finish;
  end
  
  initial begin
    $monitor("At time %t : a=%b, y=%b",$time,b,c);
  end
  
  initial begin
    $dumpfile("not_thru_nand.vcd");
    $dumpvars(0, not_thru_nandtb);
  end
  
endmodule