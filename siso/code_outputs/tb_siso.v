module tb_siso;
    reg clk;
    reg rst;
    reg serial_in;
    wire serial_out;

    siso_reg uut (
        .clk(clk),
        .rst(rst),
        .serial_in(serial_in),
        .serial_out(serial_out)
    );

    always #10 clk = ~clk;

    initial begin
        $dumpfile("tb_siso_out.vcd");
        $dumpvars(0, tb_siso);

        clk = 0;
        rst = 1;
        serial_in = 0;
        #20;

        rst = 0;
        
        // Send 4 bits serially: 1 0 1 1
        serial_in = 1; #20;
        serial_in = 0; #20;
        serial_in = 1; #20;
        serial_in = 1; #20;

        #40 $finish;
    end
endmodule
