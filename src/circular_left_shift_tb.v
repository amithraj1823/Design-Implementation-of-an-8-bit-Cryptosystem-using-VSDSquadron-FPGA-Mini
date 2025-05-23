`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.05.2025 15:31:27
// Design Name: 
// Module Name: circular_left_shift_tb
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


module circular_left_shift_tb();

    // Inputs
    reg [7:0] in;

    // Outputs
    wire [7:0] out;

    // Instantiate the Unit Under Test (UUT)
    circular_left_shift uut (
        .in(in),
        .out(out)
    );

    initial begin
        // Apply test vectors
        in = 8'b00000001; #10;  // Expected: 00000010
        in = 8'b10000000; #10;  // Expected: 00000001
        in = 8'b11110000; #10;  // Expected: 11100001

        // Finish simulation
        $finish;
    end

endmodule
