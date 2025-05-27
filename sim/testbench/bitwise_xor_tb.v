`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.05.2025 14:52:20
// Design Name: 
// Module Name: bitwise_xor_tb
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


module bitwise_xor_tb();

reg  [7:0] a, b;
wire [7:0] y;

bitwise_xor uut (
    a,
    b,
    y
);

initial 
begin
    a = 8'b10101010; b = 8'b01010101; #10;
    a = 8'b11110000; b = 8'b00001111; #10;
    a = 8'b00000000; b = 8'b11111111; #10;
    a = 8'b11111111; b = 8'b11111111; #10;
    $finish;
end

endmodule
