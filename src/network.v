module tt_um_network(
    input  wire [7:0] ui_in,    // Dedicated inputs - connected to the input switches
    output wire [7:0] uo_out,   // Dedicated outputs - connected to the 7 segment display
);

perceptron_input_layer p11(ui_in,8'd2,8'd4,8'd2,8'd1,8'd5,8'd2,8'd2,8'd2,8'd0,uo_out[0]);
perceptron_input_layer p12(ui_in,8'd1,8'd2,8'd3,8'd4,8'd2,8'd2,8'd2,8'd1,8'd0,uo_out[1]);
perceptron_input_layer p13(ui_in,8'd1,8'd2,8'd4,8'd2,8'd1,8'd5,8'd2,8'd2,8'd0,uo_out[2]);
perceptron_input_layer p14(ui_in,8'd1,8'd4,8'd2,8'd5,8'd2,8'd3,8'd3,8'd1,8'd0,uo_out[3]);
perceptron_input_layer p15(ui_in,8'd1,8'd2,8'd2,8'd3,8'd1,8'd2,8'd2,8'd2,8'd0,uo_out[4]);
perceptron_input_layer p16(ui_in,8'd3,8'd3,8'd3,8'd3,8'd2,8'd2,8'd2,8'd2,8'd0,uo_out[5]);
perceptron_input_layer p17(ui_in,8'd4,8'd3,8'd2,8'd1,8'd2,8'd2,8'd3,8'd3,8'd0,uo_out[6]);
perceptron_input_layer p18(ui_in,8'd4,8'd4,8'd1,8'd1,8'd2,8'd2,8'd3,8'd4,8'd0,uo_out[7]);


endmodule
