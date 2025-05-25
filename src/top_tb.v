`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.05.2025 16:06:42
// Design Name: 
// Module Name: top_tb
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


module top_tb;

    reg sel;
    reg [7:0] inp;
    reg [7:0] key;
    wire [7:0] out;

    // Instantiate the DUT (Device Under Test)
    top dut (
        .sel(sel),
        .inp(inp),
        .key(key),
        .out(out)
    );

    initial begin
        // Initialize inputs
        sel = 0;
        inp = 8'h00;
        key = 8'h3c;

        // Wait for global reset
        #10;

        // Test case 1: Encryption (sel = 1)
        sel = 1;
        inp = 8'ha5;      // example input
        #10;
        
        // Test case 2: Decryption (sel = 0)
        sel = 0;
        inp = out;        // feed the encrypted output back to decrypt
        #10;
        
        // Test case 3: Another encryption input
        sel = 1;
        inp = 8'h7E;
        #10;
        
        // Test case 4: Decryption of above
        sel = 0;
        inp = out;
        #10;
        $finish;
    end

endmodule
