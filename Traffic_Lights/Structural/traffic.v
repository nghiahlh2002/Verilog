module traffic(clk,rst_n,start,l1,l2);
input clk,rst_n,start;
output [1:0] l1,l2;
wire [2:0] q;

ngovao inpp(start,clk,rst_n,q);
ngora outpp(q,l1,l2);

endmodule
