// Check that it is possible to declare the data type for a vector type task
// port separately from the direction for non-ANSI style port declarations.

module test;

  task t;
    input [7:0] x;
    reg [7:0] x;
    if (x == 10 && $bits(x) == 8) begin
      $display("PASSED");
    end else begin
      $display("FAILED");
    end
  endtask

  initial t(10);

endmodule
