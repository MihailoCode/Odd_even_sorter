module tt_um_sorter (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,
    input  wire       clk,
    input  wire       rst_n
);

reg [7:0] ui_in_reg_1;
reg [7:0] ui_in_reg_2;

always @(posedge clk) begin
    if(!rst_n) begin
        ui_in_reg_1<=0;
        ui_in_reg_2<=0;
    end
    else begin
        ui_in_reg_1<=ui_in;
        ui_in_reg_2<=ui_in_reg_1; 
    end
end

assign uio_oe = 0;
assign uio_out= 0;

top_sorter tt_sorter(.clk(clk),
                     .rst_n(rst_n),
                     .inp(ui_in_reg_2),
                     .out(uo_out));

endmodule