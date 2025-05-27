`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2025 12:45:01
// Design Name: 
// Module Name: decrypt_tb
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

module decrypt_tb;

    // Inputs
    reg [7:0] key;
    reg [7:0] inp;

    // Output
    wire [7:0] out;

    // Instantiate the encrypt module
    decrypt uut (
        .key(key),
        .inp(inp),
        .out(out)
    );

    initial begin
                // Test vector 1
        key = 8'h3c; inp = 8'h86;
        #10;

        // Test vector 2
        inp = 8'h1b;
        #10;

        // Test vector 3
        inp = 8'h47;
        #10;

        // Test vector 4
        inp = 8'h09;
        #10;

        // Test vector 5
        inp = 8'h26;
        #10;

        $finish;
    end

endmodule
