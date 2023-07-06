![](../../workflows/gds/badge.svg) ![](../../workflows/docs/badge.svg)

#  An odd even sorter
This repository contains the implementation of an odd even sorter in Verilog. This sorter takes four 2-bit numbers and sorts them appropriately to the output signals. 
<p align="center">
<img src=./figures/figure1.png>
</p>
<p align = "center">
    <b>Figure 1:</b> The implementation of the sorter and the internal architecture of the swap cell
</p>


The figure 1 depicts the implementation of the odd even sorter and the internal architecture of each swap cell. The swap cell is responsible for the redistribution of the inputs, in order for the greater value to be placed on the High(H) output of the swap cell and the lower value to be placed on the Low(L) output of the swap cell.

# Interface

| Signals | Tiny Tapeout 4 signals |
| :-----: | :--------------------: |
|   In1   |       ui_in[1:0]       |
|   In2   |       ui_in[3:2]       |
|   In3   |       ui_in[5:4]       |
|   In4   |       ui_in[7:6]       |
|  Out1   |      uo_out[1:0]       |
|  Out2   |      uo_out[3:2]       |
|  Out3   |      uo_out[5:4]       |
|  Out4   |      uo_out[7:6]       |
