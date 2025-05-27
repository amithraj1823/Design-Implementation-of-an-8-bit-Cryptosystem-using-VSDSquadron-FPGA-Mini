`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.05.2025 15:47:45
// Design Name: 
// Module Name: inverse_substitution_block_tb
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


module inverse_substitution_block_tb( );
reg  [7:0] in;
wire [7:0] c;

inverse_substitution_block uut(in,c);
initial 
begin
    in = 8'b01100010; #10;
    in = 8'b00010111; #10;
    in = 8'b01010010; #10;
    in = 8'b01111101; #10;
    $finish;
end
endmodule
