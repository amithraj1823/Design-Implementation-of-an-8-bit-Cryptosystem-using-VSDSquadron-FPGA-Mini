`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2025 12:20:06
// Design Name: 
// Module Name: decrypt
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


module decrypt(
    input  [7:0] key,
    input  [7:0] inp,
    output [7:0] out
);

    wire [7:0] key0;
    wire [7:0] key1, key2, key3, key4, key5, key6, key7, key8, key9, key10;
    wire [7:0] isub1, isub2, isub3, isub4, isub5, isub6, isub7, isub8, isub9, isub10;
    wire [7:0] crs1, crs2, crs3, crs4, crs5, crs6, crs7, crs8, crs9, crs10;
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
    bitwise_xor bx10 (
        .a(inp),
        .b(key10),
        .y(xr10)
    );
    
    circular_right_shift cr10(
        .in(xr10),
        .out(crs10)
    );
    
    inverse_substitution_block isb10(
        .in(crs10),
        .c(isub10)
    ); 
    
    bitwise_xor bx9 (
        .a(isub10),
        .b(key9),
        .y(xr9)
    );
    
    reversible_logic rl_9(
        .in(xr9),
        .out(rl9)
    );
    
    circular_right_shift cr9(
        .in(rl9),
        .out(crs9)
    );
    
    inverse_substitution_block isb9(
        .in(crs9),
        .c(isub9)
    ); 
    
    bitwise_xor bx8 (
        .a(isub9),
        .b(key8),
        .y(xr8)
    );
    
    reversible_logic rl_8(
        .in(xr8),
        .out(rl8)
    );
    
    circular_right_shift cr8(
        .in(rl8),
        .out(crs8)
    );
    
    inverse_substitution_block isb8(
        .in(crs8),
        .c(isub8)
    );     
    
    bitwise_xor bx7 (
        .a(isub8),
        .b(key7),
        .y(xr7)
    );
    
    reversible_logic rl_7(
        .in(xr7),
        .out(rl7)
    );
    
    circular_right_shift cr7(
        .in(rl7),
        .out(crs7)
    );
    
    inverse_substitution_block isb7(
        .in(crs7),
        .c(isub7)
    );     
    
    bitwise_xor bx6 (
        .a(isub7),
        .b(key6),
        .y(xr6)
    );
    
    reversible_logic rl_6(
        .in(xr6),
        .out(rl6)
    );
    
    circular_right_shift cr6(
        .in(rl6),
        .out(crs6)
    );
    
    inverse_substitution_block isb6(
        .in(crs6),
        .c(isub6)
    );     
    
    bitwise_xor bx5 (
        .a(isub6),
        .b(key5),
        .y(xr5)
    );
    
    reversible_logic rl_5(
        .in(xr5),
        .out(rl5)
    );
    
    circular_right_shift cr5(
        .in(rl5),
        .out(crs5)
    );
    
    inverse_substitution_block isb5(
        .in(crs5),
        .c(isub5)
    );     
    
    bitwise_xor bx4 (
        .a(isub5),
        .b(key4),
        .y(xr4)
    );
    
    reversible_logic rl_4(
        .in(xr4),
        .out(rl4)
    );
    
    circular_right_shift cr4(
        .in(rl4),
        .out(crs4)
    );
    
    inverse_substitution_block isb4(
        .in(crs4),
        .c(isub4)
    );     
    
    bitwise_xor bx3 (
        .a(isub4),
        .b(key3),
        .y(xr3)
    );
    
    reversible_logic rl_3(
        .in(xr3),
        .out(rl3)
    );
    
    circular_right_shift cr3(
        .in(rl3),
        .out(crs3)
    );
    
    inverse_substitution_block isb3(
        .in(crs3),
        .c(isub3)
    );     
    
    bitwise_xor bx2 (
        .a(isub3),
        .b(key2),
        .y(xr2)
    );
    
    reversible_logic rl_2(
        .in(xr2),
        .out(rl2)
    );
    
    circular_right_shift cr2(
        .in(rl2),
        .out(crs2)
    );
    
    inverse_substitution_block isb2(
        .in(crs2),
        .c(isub2)
    );     
    
    bitwise_xor bx1 (
        .a(isub2),
        .b(key1),
        .y(xr1)
    );
    
    reversible_logic rl_1(
        .in(xr1),
        .out(rl1)
    );
    
    circular_right_shift cr1(
        .in(rl1),
        .out(crs1)
    );
    
    inverse_substitution_block isb1(
        .in(crs1),
        .c(isub1)
    );  
    
    bitwise_xor bx0 (
        .a(isub1),
        .b(key0),
        .y(out)
    );           

endmodule
