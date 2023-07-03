module top_sorter(clk,rst_n,inp,out);
    input clk;
    input rst_n;
    input [7:0] inp;
    output [7:0] out;

    wire [7:0] out_f;
    wire [7:0] out_s;
    wire [7:0] out_t;

    reg [7:0] out_f_pipe;
    reg [7:0] out_s_pipe;
    reg [7:0] out_t_pipe;

    sorter modA(.inpA(inp[1:0]),.inpB(inp[3:2]),.H(out_f[1:0]),.L(out_f[3:2]));

    sorter modB(.inpA(inp[5:4]),.inpB(inp[7:6]),.H(out_f[5:4]),.L(out_f[7:6]));

    always @(posedge clk) begin
        if(!rst_n)
            out_f_pipe<=0;
        else
            out_f_pipe<=out_f;
    end


    sorter modC(.inpA(out_f_pipe[1:0]),.inpB(out_f_pipe[5:4]),.H(out_s[1:0]),.L(out_s[3:2]));

    sorter modD(.inpA(out_f_pipe[3:2]),.inpB(out_f_pipe[7:6]),.H(out_s[5:4]),.L(out_s[7:6]));

    always @(posedge clk) begin
        if(!rst_n)
            out_s_pipe<=0;
        else
            out_s_pipe<=out_s;
    end

    sorter modE(.inpA(out_s_pipe[3:2]),.inpB(out_s_pipe[5:4]),.H(out_t[3:2]),.L(out_t[5:4]));

    assign out_t[1:0]=out_s_pipe[1:0];
    assign out_t[7:6]=out_s_pipe[7:6];

    always @(posedge clk) begin
        if(!rst_n)
            out_t_pipe<=0;
        else
            out_t_pipe<=out_t;
    end

    assign out=out_t_pipe;

endmodule