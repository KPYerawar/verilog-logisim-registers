module pipo_reg (
    input clk , rst , 
    input  d0 , d1 , d2 , d3 ,
      output wire q0, q1, q2, q3
);
wire q3_bar , q2_bar , q1_bar , q0_bar ;
wire set = 0 ;


d_ff dff0 ( .clk (clk) ,.rst(rst) ,.set(set) ,.q_bar(q0_bar) ,.d(d0) ,.q(q0));
d_ff dff1 ( .clk (clk) ,.rst(rst) ,.set(set) ,.q_bar(q1_bar) ,.d(d1) ,.q(q1));
d_ff dff2 ( .clk (clk) ,.rst(rst) ,.set(set) ,.q_bar(q2_bar) ,.d(d2) ,.q(q2));
d_ff dff3 ( .clk (clk) ,.rst(rst) ,.set(set) ,.q_bar(q3_bar) ,.d(d3) ,.q(q3));
endmodule