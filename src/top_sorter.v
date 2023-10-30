module top_sorter(
    input [7:0] inp,
    input [7:0] out
);

    perceptron p11(inp,8'd2,8'd4,8'd2,8'd1,8'd5,8'd2,8'd2,8'd2,out[0]);
    perceptron p12(inp,8'd1,8'd2,8'd3,8'd4,8'd2,8'd2,8'd2,8'd1,out[1]);
    perceptron p13(inp,8'd1,8'd2,8'd4,8'd2,8'd1,8'd5,8'd2,8'd2,out[2]);
    perceptron p14(inp,8'd1,8'd4,8'd2,8'd5,8'd2,8'd3,8'd3,8'd1,out[3]);
    perceptron p15(inp,8'd1,8'd2,8'd2,8'd3,8'd1,8'd2,8'd2,8'd2,out[4]);
    perceptron p16(inp,8'd3,8'd3,8'd3,8'd3,8'd2,8'd2,8'd2,8'd2,out[5]);
    perceptron p17(inp,8'd4,8'd3,8'd2,8'd1,8'd2,8'd2,8'd3,8'd3,out[6]);
    perceptron p18(inp,8'd4,8'd4,8'd1,8'd1,8'd2,8'd2,8'd3,8'd4,out[7]);
   

endmodule
