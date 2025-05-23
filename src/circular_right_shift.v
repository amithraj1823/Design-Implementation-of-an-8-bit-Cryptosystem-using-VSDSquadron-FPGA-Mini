`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.05.2025 15:29:51
// Design Name: 
// Module Name: circular_right_shift
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


// File: circular_right_shift.v
module circular_right_shift (
    input  [7:0] in,
    output [7:0] out
);

assign out = {in[0], in[7:1]};  // Shift right, LSB goes to MSB

endmodule


