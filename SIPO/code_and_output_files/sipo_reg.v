module sipo_reg (
    input [3:0] in,
    input rst , clk ,
    output wire  q0 , q1 , q2 , q3 
);
wire set = 0 ;
wire  d0 ,d1 , d2 , d3 ;

assign d0 = in[0];
assign d1 = in[1];

assign d2 = in[2];

assign d3 = in[3];
d_ff f0 ( .clk(clk) ,.rst(rst) ,.set(set) ,. d(d0) ,. q(q0)  );
d_ff f1 ( .clk(clk) ,.rst(rst) ,.set(set) ,. d(d1) ,. q(q1)  );
d_ff f2 ( .clk(clk) ,.rst(rst) ,.set(set) ,. d(d2) ,. q(q2)  );
d_ff f3 ( .clk(clk) ,.rst(rst) ,.set(set) ,. d(d3) ,. q(q3)  );

endmodule

