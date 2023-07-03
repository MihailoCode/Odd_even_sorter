module sorter(inpA,inpB,H,L);
input [1:0] inpA;
input [1:0] inpB;
output [1:0] H;
output [1:0] L;

assign H=(inpA>inpB)?inpA:inpB;
assign L=(inpA>inpB)?inpB:inpA;

endmodule