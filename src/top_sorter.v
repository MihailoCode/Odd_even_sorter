module top_sorter(clk,rst_n,inp,out);
    input clk;
    input rst_n;
    input [7:0] inp;
    output [7:0] out;

    wire [3:0] a;
    wire [3:0] b;

    assign a=4'b0011;
    assign b=4'b0010;
    
    assign out=a*b;

   

endmodule
