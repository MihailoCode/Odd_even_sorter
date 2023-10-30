module tt_um_network(
    input  wire [7:0] ui_in,    // Dedicated inputs - connected to the input switches
    output wire [7:0] uo_out,   // Dedicated outputs - connected to the 7 segment display
    input  wire [7:0] uio_in,   // IOs: Bidirectional Input path
    output wire [7:0] uio_out,  // IOs: Bidirectional Output path
    output wire [7:0] uio_oe,   // IOs: Bidirectional Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // will go high when the design is enabled
    input wire        clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

perceptron p11(ui_in,8'd2,8'd4,8'd2,8'd1,8'd5,8'd2,8'd2,8'd2,8'd0,uo_out[0]);
perceptron p12(ui_in,8'd1,8'd2,8'd3,8'd4,8'd2,8'd2,8'd2,8'd1,8'd0,uo_out[1]);
perceptron p13(ui_in,8'd1,8'd2,8'd4,8'd2,8'd1,8'd5,8'd2,8'd2,8'd0,uo_out[2]);
perceptron p14(ui_in,8'd1,8'd4,8'd2,8'd5,8'd2,8'd3,8'd3,8'd1,8'd0,uo_out[3]);
perceptron p15(ui_in,8'd1,8'd2,8'd2,8'd3,8'd1,8'd2,8'd2,8'd2,8'd0,uo_out[4]);
perceptron p16(ui_in,8'd3,8'd3,8'd3,8'd3,8'd2,8'd2,8'd2,8'd2,8'd0,uo_out[5]);
perceptron p17(ui_in,8'd4,8'd3,8'd2,8'd1,8'd2,8'd2,8'd3,8'd3,8'd0,uo_out[6]);
perceptron p18(ui_in,8'd4,8'd4,8'd1,8'd1,8'd2,8'd2,8'd3,8'd4,8'd0,uo_out[7]);


endmodule
