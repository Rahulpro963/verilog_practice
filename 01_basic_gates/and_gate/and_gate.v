// Code your design here
module and_gate_test;

  reg a, b;
  wire y;

  // Instantiate the DUT (Design Under Test)
  and_gate uut (
    .a(a),
    .b(b),
    .y(y)
  );

  // Apply test inputs
  initial begin
    $display("A B | y");
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;
    $finish;
  end

  // Display signal changes
  initial begin
    $monitor("At time %t: a=%b, b=%b, y=%b", $time, a, b, y);
  end

  // Dump waveform
  initial begin
    $dumpfile("and_wave.vcd");
    $dumpvars(0, and_gate_test);
  end

endmodule

