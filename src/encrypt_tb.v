`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2025 10:15:53
// Design Name: 
// Module Name: encrypt_tb
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


module encrypt_tb;

    // Inputs
    reg [7:0] key;
    reg [7:0] inp;

    // Output
    wire [7:0] out;

    // Instantiate the encrypt module
    encrypt uut (
        .key(key),
        .inp(inp),
        .out(out)
    );

    initial begin
                // Test vector 1
        key = 8'h3C; inp = 8'hA5;
        #10;

        // Test vector 2
        inp = 8'h00;
        #10;

        // Test vector 3
        inp = 8'h34;
        #10;

        // Test vector 4
        inp = 8'hAA;
        #10;

        // Test vector 5
        inp = 8'hFF;
        #10;

        $finish;
    end

endmodule
