module nand_3ip_tb();
  reg a, b, c;
  wire y;
  
  nand_3ip uut(
    .a(a),
    .b(b),
    .c(c),
    .y(y)
  );
  
  initial begin
    $display("A | B = Y");
    a=0; b=0; c=0; #10
    a=0; b=0; c=1; #10
    a=0; b=1; c=0; #10
    a=0; b=1; c=1; #10
    a=1; b=0; c=0; #10
    a=1; b=0; c=1; #10
    a=1; b=1; c=0; #10
    a=1; b=1; c=1; #10
    $finish;
  end
  
  initial begin
    $monitor("At time %t : a=%b,b=%b,c=%b,y=%b",$time,a,b,c,y);
  end
  
  initial begin
    $dumpfile("nand_gate.vcd");
    $dumpvars(0, nand_3ip_tb);
  end
  
endmodule
  
