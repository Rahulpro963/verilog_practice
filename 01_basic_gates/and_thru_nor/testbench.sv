module and_thru_nortb();
  reg p, q, r;
  wire s;
  
  and_thru_nor uut(
    .a(p),
    .b(q),
    .c(r),
    .y(s));
  
  
  initial begin 
    $display("A | B | C");
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
    $monitor("At time %t: a=%b, b=%b, c=%b, y=%b", $time, p,q,r,s);
  end
  
  initial begin
    $dumpfile("and_thru_nor.vcd");
    $dumpvars(0, and_thru_nortb);
  end
  
endmodule
  