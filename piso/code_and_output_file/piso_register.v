module piso_register (
    input clk , rst , d0 , d1 , d2 , d3 ,
    output [3:0]out 
);

wire q0_bar , q1_bar , q2_bar , q3_bar;
wire set = 0;

d_ff ff0 ( .rst(rst) ,.clk(clk) ,.set(set) ,.d(d0) ,.q(out[0]) );
d_ff ff1 ( .rst(rst) ,.clk(clk) ,.set(set) ,.d(d1) ,.q(out[1]) );
d_ff ff2 ( .rst(rst) ,.clk(clk) ,.set(set) ,.d(d2) ,.q(out[2]) );
d_ff ff3 ( .rst(rst) ,.clk(clk) ,.set(set) ,.d(d3) ,.q(out[3]) );

endmodule

