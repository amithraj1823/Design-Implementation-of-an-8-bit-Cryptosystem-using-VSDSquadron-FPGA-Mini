`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.05.2025 17:51:36
// Design Name: 
// Module Name: key_generator_tb
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


module key_generator_tb;

    reg  [7:0] in_key;
    wire [7:0] key0, key1, key2, key3, key4, key5, key6, key7, key8, key9, key10;

    key_generator uut (
        .in_key(in_key),
        .key0(key0),
        .key1(key1),
        .key2(key2),
        .key3(key3),
        .key4(key4),
        .key5(key5),
        .key6(key6),
        .key7(key7),
        .key8(key8),
        .key9(key9),
        .key10(key10)
    );

    initial begin
        // Apply 10 different 8-bit input values
        in_key = 8'b00000000; #10;
        in_key = 8'b11111111; #10;
        in_key = 8'b10101010; #10;
        in_key = 8'b01010101; #10;
        in_key = 8'b11001100; #10;
        in_key = 8'b00110011; #10;
        in_key = 8'b10000001; #10;
        in_key = 8'b01111110; #10;
        in_key = 8'b00011000; #10;
        in_key = 8'b11100111; #10;

        $finish;
    end

endmodule

