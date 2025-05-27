//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.05.2025 18:00:01
// Design Name: 
// Module Name: reversible_logic
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

module reversible_logic (
    input  wire [7:0] in,
    output wire [7:0] out
);

assign out[7] = in[0];
assign out[6] = in[1];
assign out[5] = in[2];
assign out[4] = in[3];
assign out[3] = in[4];
assign out[2] = in[5];
assign out[1] = in[6];
assign out[0] = in[7];

endmodule



