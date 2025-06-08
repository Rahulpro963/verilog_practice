module bcd2graytb();
  reg[3:0] bcd;
  wire b3,b2,b1,b0,g3,g2,g1,g0;
  integer i;
  
  assign {b3, b2, b1, b0} = bcd;
  
  bcd2gray uut(
    .b3(b3),
    .b2(b2),
    .b1(b1),
    .b0(b0),
    .g3(g3),
    .g2(g2),
    .g1(g1),
    .g0(g0));
  
  initial begin
    for(i=0; i<10; i=i+1)
      begin
        bcd = i;
        #10;
      end
    $finish;
  end
  
 initial begin
   $monitor("At time %0t: b3=%b, b2=%b, b1=%b, b0=%b --> g3 = %b, g2=%b, g1=%b, g0=%b",$time,b3,b2,b1,b0,g3,g2,g1,g0);
 end
  
  initial begin 
    $dumpfile("bcd2gray.vcd");
    $dumpvars(0,bcd2graytb);
  end
  
endmodule
    