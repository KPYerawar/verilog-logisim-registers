module tb_piso;
reg clk;
reg rst;
reg d0 , d1 , d2 , d3 ;
wire [3:0]out ;

 piso_register uut
(
    .rst (rst),
    .clk (clk),
    .d0(d0),
    .d1(d1),
    .d2(d2),
    .d3(d3),
    .out(out)
);

always #10 clk = ~ clk;


initial begin
     $dumpfile("tb_piso.vcd");
    $dumpvars(0, tb_piso);
       clk = 0 ;

   rst = 1 ;
   #10 ;
   rst = 0 ;
   repeat (10) begin 
    d0 = $random %2;
    d1 = $random %2;
    d2 = $random %2;
    d3 = $random %2;
   end
   #20;
   $finish;
end

endmodule
