module tb_sipo;
reg clk;
reg rst ;
reg [3:0] in ;
wire q0 ,q1 ,q2 ,q3;

 sipo_reg uut
(
    .rst (rst),
    .clk (clk),
    .in(in),
    .q0(q0),
    .q1(q1),
    .q2(q2),
    .q3(q3)


);

localparam CLK_PERIOD = 10;
always #(CLK_PERIOD/2) clk=~clk;

initial begin
    $dumpfile("sipo_out.vcd");
    $dumpvars(0, tb_sipo);
end

initial begin
   rst =1 ;
   clk = 0 ;
   #20 ;
   rst = 0 ;
   repeat (10) begin
    in = $random%16 ;
   end
   #300;
    $finish;
end

endmodule
