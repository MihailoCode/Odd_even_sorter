module network(
    input [7:0] in,
    output [7:0] out
);

perceptron_input_layer p11(in,8'd2,8'd4,8'd2,8'd1,8'd5,8'd2,8'd2,8'd2,8'd0,out[0]);
perceptron_input_layer p12(in,8'd1,8'd2,8'd3,8'd4,8'd2,8'd2,8'd2,8'd1,8'd0,out[1]);
perceptron_input_layer p13(in,8'd1,8'd2,8'd4,8'd2,8'd1,8'd5,8'd2,8'd2,8'd0,out[2]);
perceptron_input_layer p14(in,8'd1,8'd4,8'd2,8'd5,8'd2,8'd3,8'd3,8'd1,8'd0,out[3]);
perceptron_input_layer p15(in,8'd1,8'd2,8'd2,8'd3,8'd1,8'd2,8'd2,8'd2,8'd0,out[4]);
perceptron_input_layer p16(in,8'd3,8'd3,8'd3,8'd3,8'd2,8'd2,8'd2,8'd2,8'd0,out[5]);
perceptron_input_layer p17(in,8'd4,8'd3,8'd2,8'd1,8'd2,8'd2,8'd3,8'd3,8'd0,out[6]);
perceptron_input_layer p18(in,8'd4,8'd4,8'd1,8'd1,8'd2,8'd2,8'd3,8'd4,8'd0,out[7]);


endmodule