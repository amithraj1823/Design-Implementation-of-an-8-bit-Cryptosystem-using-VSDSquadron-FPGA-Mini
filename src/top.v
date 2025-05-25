`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.05.2025 16:06:08
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
    input sel,
    input [7:0] inp,
    input [7:0] key,
    output [7:0] out
);

    wire [7:0] encrypted_out;
    wire [7:0] decrypted_out;

    encrypt enc (
        .key(key),
        .inp(inp),
        .out(encrypted_out)
    );

    decrypt dec (
        .key(key),
        .inp(inp),
        .out(decrypted_out)
    );

    assign out = sel ? encrypted_out : decrypted_out;

endmodule



