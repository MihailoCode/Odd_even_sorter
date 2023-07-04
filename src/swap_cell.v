module sorter(inpA,inpB,H,L);
input [1:0] inpA;
input [1:0] inpB;
output [1:0] H;
output [1:0] L;

wire en;

assign en=(inpA>inpB);

assign H=(en)?inpA:inpB;
assign L=(en)?inpB:inpA;

endmodule