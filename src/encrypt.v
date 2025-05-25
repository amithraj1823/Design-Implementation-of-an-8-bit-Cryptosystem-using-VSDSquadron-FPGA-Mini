`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2025 10:15:09
// Design Name: 
// Module Name: encrypt
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


module encrypt(
    input  [7:0] key,
    input  [7:0] inp,
    output [7:0] out
);

    wire [7:0] key0;
    wire [7:0] key1, key2, key3, key4, key5, key6, key7, key8, key9, key10;
    wire [7:0] sub1, sub2, sub3, sub4, sub5, sub6, sub7, sub8, sub9, sub10;
    wire [7:0] cls1, cls2, cls3, cls4, cls5, cls6, cls7, cls8, cls9, cls10;
    wire [7:0] rl1, rl2, rl3, rl4, rl5, rl6, rl7, rl8, rl9;
    wire [7:0] xr0, xr1, xr2, xr3, xr4, xr5, xr6, xr7, xr8, xr9, xr10;

    // Instantiate key_generator
    key_generator kg1 (
        .in_key(key),
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

    // Instantiate bitwise_xor module
    bitwise_xor bx0 (
        .a(inp),
        .b(key0),
        .y(xr0)
    );
    
        substitution_block sb1(
        .in(xr0),
        .out(sub1)
    );        

    circular_left_shift cl1(
        .in(sub1),
        .out(cls1)
    );

    reversible_logic rl_1(
        .in(cls1),
        .out(rl1)
    );

    bitwise_xor bx1 (
        .a(rl1),
        .b(key1),
        .y(xr1)
    );

    substitution_block sb2(
        .in(xr1),
        .out(sub2)
    );        

    circular_left_shift cl2(
        .in(sub2),
        .out(cls2)
    );

    reversible_logic rl_2(
        .in(cls2),
        .out(rl2)
    );

    bitwise_xor bx2 (
        .a(rl2),
        .b(key2),
        .y(xr2)
    );

    substitution_block sb3(
        .in(xr2),
        .out(sub3)
    );        

    circular_left_shift cl3(
        .in(sub3),
        .out(cls3)
    );

    reversible_logic rl_3(
        .in(cls3),
        .out(rl3)
    );

    bitwise_xor bx3 (
        .a(rl3),
        .b(key3),
        .y(xr3)
    );

    substitution_block sb4(
        .in(xr3),
        .out(sub4)
    );        

    circular_left_shift cl4(
        .in(sub4),
        .out(cls4)
    );

    reversible_logic rl_4(
        .in(cls4),
        .out(rl4)
    );

    bitwise_xor bx4 (
        .a(rl4),
        .b(key4),
        .y(xr4)
    );

    substitution_block sb5(
        .in(xr4),
        .out(sub5)
    );        

    circular_left_shift cl5(
        .in(sub5),
        .out(cls5)
    );

    reversible_logic rl_5(
        .in(cls5),
        .out(rl5)
    );

    bitwise_xor bx5 (
        .a(rl5),
        .b(key5),
        .y(xr5)
    );

    substitution_block sb6(
        .in(xr5),
        .out(sub6)
    );        

    circular_left_shift cl6(
        .in(sub6),
        .out(cls6)
    );

    reversible_logic rl_6(
        .in(cls6),
        .out(rl6)
    );

    bitwise_xor bx6 (
        .a(rl6),
        .b(key6),
        .y(xr6)
    );

    substitution_block sb7(
        .in(xr6),
        .out(sub7)
    );        

    circular_left_shift cl7(
        .in(sub7),
        .out(cls7)
    );

    reversible_logic rl_7(
        .in(cls7),
        .out(rl7)
    );

    bitwise_xor bx7 (
        .a(rl7),
        .b(key7),
        .y(xr7)
    );

    substitution_block sb8(
        .in(xr7),
        .out(sub8)
    );        

    circular_left_shift cl8(
        .in(sub8),
        .out(cls8)
    );

    reversible_logic rl_8(
        .in(cls8),
        .out(rl8)
    );

    bitwise_xor bx8 (
        .a(rl8),
        .b(key8),
        .y(xr8)
    );

    substitution_block sb9(
        .in(xr8),
        .out(sub9)
    );        

    circular_left_shift cl9(
        .in(sub9),
        .out(cls9)
    );

    reversible_logic rl_9(
        .in(cls9),
        .out(rl9)
    );

    bitwise_xor bx9 (
        .a(rl9),
        .b(key9),
        .y(xr9)
    );
    
    substitution_block sb10(
        .in(xr9),
        .out(sub10)
    );        

    circular_left_shift cl0(
        .in(sub10),
        .out(cls10)
    );

    bitwise_xor bx10 (
        .a(cls10),
        .b(key10),
        .y(out)
    );

endmodule

