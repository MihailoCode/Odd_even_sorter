module top_sorter(clk,rst_n,inp,out);
    input clk;
    input rst_n;
    input [7:0] inp;
    output [7:0] out;

    assign inp[7:4]=4'b0011;
    assign inp[3:0]=4'b0010;
    assign out=inp[4:4]*inp[3:0];

   

endmodule
