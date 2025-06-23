module tb_pipo_reg;
reg clk , rst , d0 , d1, d2 , d3;
wire q0 ,q1 ,q2 , q3 ;

pipo_reg uut (
    .clk(clk),
    .rst(rst),
    .d0 (d0),
    .d1(d1),
    .d2(d2),
    .d3(d3),
    .q0(q0),
    .q1(q1),
    .q2(q2),
    .q3(q3)
);

always #5 clk = ~clk ;

initial begin
    $dumpfile ("pipo.vcd");
    $dumpvars ( 0 , tb_pipo_reg);
    clk = 0 ; 
    rst = 1 ;
    # 10 ;
    rst = 0 ;


    //random function
    repeat (10) begin 
        d0 = $random %2 ;
        d1= $random %2 ;
        d2 = $random %2 ;
        d3 = $random %2 ;
#10;
end
$finish ;
end 
endmodule