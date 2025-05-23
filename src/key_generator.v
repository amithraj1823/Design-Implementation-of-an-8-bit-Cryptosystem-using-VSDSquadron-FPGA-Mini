`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.05.2025 17:51:11
// Design Name: 
// Module Name: key_generator
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


module key_generator (
    input  [7:0] in_key,
    output [7:0] key0,
    output [7:0] key1,
    output [7:0] key2,
    output [7:0] key3,
    output [7:0] key4,
    output [7:0] key5,
    output [7:0] key6,
    output [7:0] key7,
    output [7:0] key8,
    output [7:0] key9,
    output [7:0] key10
);

    assign key0  = in_key;
    assign key1  = {in_key[6:0], in_key[7]};              // left rotate by 1
    assign key2  = in_key ^ 8'hAA;                        // XOR with 10101010
    assign key3  = {in_key[0], in_key[7:1]};              // right rotate by 1
    assign key4  = ~in_key;                               // bitwise NOT
    assign key5  = in_key + 8'h1F;                        // add constant
    assign key6  = in_key - 8'h1F;                        // subtract constant
    assign key7  = {in_key[3:0], in_key[7:4]};            // nibble swap
    assign key8  = in_key ^ 8'h55;                        // XOR with 01010101
    assign key9  = {in_key[5:0], in_key[7:6]};            // left rotate by 2
    assign key10 = (in_key << 1) | (in_key >> 7);         // another left rotate

endmodule

