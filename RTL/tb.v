module tb();

reg clk = 0, rst = 0;
wire dout;

pwm dut(clk,rst,dout);

always #5 clk = ~clk;

initial begin
    rst = 1;
    repeat(5) @(posedge clk);
    rst = 0;
    repeat(300) @(posedge clk);
    $finish;
end

endmodule