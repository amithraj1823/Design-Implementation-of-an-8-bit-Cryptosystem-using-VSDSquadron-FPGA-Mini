`include "bitwise_xor.v"
`include "circular_left_shift.v"
`include "circular_right_shift.v"
`include "decrypt.v"
`include "encrypt.v"
`include "inverse_substitution_block.v"
`include "key_generator.v"
`include "reversible_logic.v"
`include "substitution_block.v"

module top(
    input sel,
    input i7, i6, i5, i4, i3, i2, i1, i0,
    input k7, k6, k5, k4, k3, k2, k1, k0,
    output o7, o6, o5, o4, o3, o2, o1, o0,
    output high
);

    wire [7:0] encrypted_out;
    wire [7:0] decrypted_out;
    wire [7:0] inp;
    wire [7:0] key;
    wire [7:0] out;

    assign inp = {i7, i6, i5, i4, i3, i2, i1, i0};
    assign key = {k7, k6, k5, k4, k3, k2, k1, k0};
    assign high=1'b1;

    encrypt enc (
        .key(key),
        .inp(inp),
        .out(encrypted_out)
    );

    decrypt dec (
        .key(key),
        .inp(inp),
        .out(decrypted_out)
    );

    assign out = sel ? encrypted_out : decrypted_out;

    assign o7 = out[7];
    assign o6 = out[6];
    assign o5 = out[5];
    assign o4 = out[4];
    assign o3 = out[3];
    assign o2 = out[2];
    assign o1 = out[1];
    assign o0 = out[0];

endmodule