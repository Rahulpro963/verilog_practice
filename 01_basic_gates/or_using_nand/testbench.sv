module or_using_nandtb();
  reg p, q, r;
  wire s;
  
  or_using_nand uut(
    .a(p),
    .b(q),
    .c(r),
    .y(s));
  
  initial begin
    p=0; q=0; r=0; #10
    p=0; q=0; r=1; #10
    p=0; q=1; r=0; #10
    p=0; q=1; r=1; #10
    p=1; q=0; r=0; #10
    p=1; q=0; r=1; #10
    p=1; q=1; r=0; #10
    p=1; q=1; r=1; #10
    $finish;
  end
  
  initial begin
    $monitor ("At time %t : a=%b,b=%b,c=%b,y=%b",$time,p,q,r,s);
  end
  
  initial begin
    $dumpfile("or_using_nand.vcd");
    $dumpvars(0, or_using_nandtb);
  end
  
endmodule
    
    
    