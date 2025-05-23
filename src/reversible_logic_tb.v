`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.05.2025 18:00:53
// Design Name: 
// Module Name: reversible_logic_tb
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



 module reversible_logic_tb;

    reg [7:0] in;
    wire [7:0] out;

    reversible_logic uut (
        .in(in),
        .out(out)
    );

    initial begin
        in = 8'b11010010;
        #10;
        in = 8'b11110001;
        #10;
        $finish;
    end

endmodule


