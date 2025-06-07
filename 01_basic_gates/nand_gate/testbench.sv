module nor_gate3ip_tb();
  reg a, b, c;
  wire y;

  nor_gate3ip uut(
    .a(a),
    .b(b),
    .c(c),
    .y(y)
  );

  initial begin 
    $display("A B C | Y");
    a = 0; b = 0; c = 0; #20;
    a = 0; b = 0; c = 1; #20;
    a = 0; b = 1; c = 0; #20;
    a = 0; b = 1; c = 1; #20;
    a = 1; b = 0; c = 0; #20;
    a = 1; b = 0; c = 1; #20;
    a = 1; b = 1; c = 0; #20;
    a = 1; b = 1; c = 1; #20;
    $finish;
  end

  initial begin
    $monitor("At time %t: a=%b, b=%b, c=%b, y=%b", $time, a, b, c, y);
  end

  initial begin 
    $dumpfile("nor_gate3ip.vcd");
    $dumpvars(0, nor_gate3ip_tb);
  end

endmodule
