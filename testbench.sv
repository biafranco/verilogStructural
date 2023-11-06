module testbench();
  reg a, b, c, d;
  wire F1, F2, F3;
  structuralProject teste(F1, F2, F3, a, b, c, d);

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, testbench);

    $display("A | B | C | D | Result");
    $display("--|---|---|---|-------");


    // Test minterm 0
    a = 0; b = 0; c = 0; d = 0; $display("%b | %b | %b | %b | %b %b %b", a, b, c, d, F1, F2, F3);#5;

    // Test minterm 1
    a = 0; b = 0; c = 0; d = 1; $display("%b | %b | %b | %b | %b %b %b", a, b, c, d, F1, F2, F3); #5; 

    // Test minterms 2 to 7
    a = 0; b = 0; c = 1; d = 0; $display("%b | %b | %b | %b | %b %b %b", a, b, c, d, F1, F2, F3); #5;
    a = 0; b = 0; c = 1; d = 1; $display("%b | %b | %b | %b | %b %b %b", a, b, c, d, F1, F2, F3); #5;
    a = 0; b = 1; c = 0; d = 0; $display("%b | %b | %b | %b | %b %b %b", a, b, c, d, F1, F2, F3); #5;
    a = 0; b = 1; c = 0; d = 1; $display("%b | %b | %b | %b | %b %b %b", a, b, c, d, F1, F2, F3); #5;
    a = 0; b = 1; c = 1; d = 0; $display("%b | %b | %b | %b | %b %b %b", a, b, c, d, F1, F2, F3); #5;
    a = 0; b = 1; c = 1; d = 1; $display("%b | %b | %b | %b | %b %b %b", a, b, c, d, F1, F2, F3); #5;

    // Test minterms 8 to 15
    a = 1; b = 0; c = 0; d = 0; $display("%b | %b | %b | %b | %b %b %b", a, b, c, d, F1, F2, F3); #5;
    a = 1; b = 0; c = 0; d = 1; $display("%b | %b | %b | %b | %b %b %b", a, b, c, d, F1, F2, F3); #5;
    a = 1; b = 0; c = 1; d = 0; $display("%b | %b | %b | %b | %b %b %b", a, b, c, d, F1, F2, F3); #5;
    a = 1; b = 0; c = 1; d = 1; $display("%b | %b | %b | %b | %b %b %b", a, b, c, d, F1, F2, F3); #5;
    a = 1; b = 1; c = 0; d = 0; $display("%b | %b | %b | %b | %b %b %b", a, b, c, d, F1, F2, F3); #5;
    a = 1; b = 1; c = 0; d = 1; $display("%b | %b | %b | %b | %b %b %b", a, b, c, d, F1, F2, F3); #5;
    a = 1; b = 1; c = 1; d = 0; $display("%b | %b | %b | %b | %b %b %b", a, b, c, d, F1, F2, F3); #5;
    a = 1; b = 1; c = 1; d = 1; $display("%b | %b | %b | %b | %b %b %b", a, b, c, d, F1, F2, F3); #5;

    $finish;
  end
endmodule
