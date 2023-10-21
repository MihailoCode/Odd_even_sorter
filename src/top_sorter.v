module top_sorter(clk,rst_n,inp,out);
    input clk;
    input rst_n;
    input [7:0] inp;
    output [7:0] out;

    assign out[7:1]=6'b0000000;
    assign out[0]=(inp[0]&&inp[1])||(inp[2]&&inp[3]);

   

endmodule
