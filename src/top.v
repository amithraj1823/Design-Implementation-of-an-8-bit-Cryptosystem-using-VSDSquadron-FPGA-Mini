`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2025 23:21:33
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top(
    input clk,
    input rst,
    output [31:0] A,
    output [31:0] B,
    output [63:0] P
    );
    
    // Define intermediate wires
    wire clk_div_1;
    wire ena_A, ena_B;
    wire wea_A, wea_B;
    wire [4:0] addra_A, addra_B;
    wire [31:0] dina_A, dina_B;
    wire [31:0] A, B;
    
    // Instantiate the clock divider
    clock_divider_1 CLK_DIV_1(
        clk,
        rst,
        clk_div_1
    );
    
    // Instantiate the BRAM controller
    BRAM_Controller controller(
        clk_div_1,
        rst,
        ena_A,
        ena_B,
        wea_A,
        wea_B,
        addra_A,
        addra_B    
    );
    
    // Instantiate the BRAM Memory-A
    BRAM_Memory_A Mem_A(
        clk_div_1,
        ena_A,
        wea_A,
        addra_A,
        dina_A,
        A
    );
    
    // Instantiate the BRAM Memory-B
    BRAM_Memory_B Mem_B(
        clk_div_1,
        ena_B,
        wea_B,
        addra_B,
        dina_B,
        B
    );
    
    // Instantiate the Multiplier
    multiplier_32x32 MUL(
        A,
        B,
        P
    );
    
endmodule
