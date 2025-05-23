`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.05.2025 15:33:40
// Design Name: 
// Module Name: substitution_block_tb
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


module substitution_block_tb( );
reg  [7:0] in;
wire [7:0] out;

substitution_block uut(in,out);
initial 
begin
    in = 8'b10101010; #10;
    in = 8'b11110000; #10;
    in = 8'b00000000; #10;
    in = 8'b11111111; #10;
    $finish;
end
endmodule



