//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.05.2025 14:47:32
// Design Name: 
// Module Name: bitwise_xor
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


// File: bitwise_xor.v
module bitwise_xor (
    input  [7:0] a,     // First 8-bit input
    input  [7:0] b,     // Second 8-bit input
    output [7:0] y      // Output: a ^ b
);

assign y = a ^ b;      // Bitwise XOR operation

endmodule

