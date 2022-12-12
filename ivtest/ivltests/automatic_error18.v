// Check that an expression is correctly detected to contain an automatic
// variable if the variable is in a SystemVerilog type cast expression.

module test;

  reg g;

  task automatic auto_task;
    reg l;

    begin: block
      assign g = reg'(l);
    end

  endtask

  initial begin
    auto_task;
    $display("FAILED");
  end

endmodule
