//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.05.2025 15:28:39
// Design Name: 
// Module Name: circular_left_shift
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


// File: circular_left_shift.v
module circular_left_shift (
    input  [7:0] in,
    output [7:0] out
);

assign out = {in[6:0], in[7]};  // Shift left, MSB goes to LSB

endmodule

