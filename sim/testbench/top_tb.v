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

    // Inputs
    reg sel;
    reg i7, i6, i5, i4, i3, i2, i1, i0;
    reg k7, k6, k5, k4, k3, k2, k1, k0;

    // Outputs
    wire o7, o6, o5, o4, o3, o2, o1, o0;
    wire high;

    // Combine outputs into a single bus for display
    wire [7:0] out;
    assign out = {o7, o6, o5, o4, o3, o2, o1, o0};

    // Instantiate the Unit Under Test (UUT)
    top uut (
        .sel(sel),
        .i7(i7), .i6(i6), .i5(i5), .i4(i4),
        .i3(i3), .i2(i2), .i1(i1), .i0(i0),
        .k7(k7), .k6(k6), .k5(k5), .k4(k4),
        .k3(k3), .k2(k2), .k1(k1), .k0(k0),
        .o7(o7), .o6(o6), .o5(o5), .o4(o4),
        .o3(o3), .o2(o2), .o1(o1), .o0(o0),
        .high(high)
    );

    initial begin
        // Apply stimulus
        sel = 1;  //enc
        i7 = 1; i6 = 0; i5 = 0; i4 = 0; //inp 0x84
        i3 = 0; i2 = 1; i1 = 0; i0 = 0;
        k7 = 0; k6 = 0; k5 = 0; k4 = 1; //key 0x18
        k3 = 1; k2 = 0; k1 = 0; k0 = 0;

        #10;       
        sel = 0;   //dec
        i7 = 1; i6 = 1; i5 = 0; i4 = 1; //inp 0xd2
        i3 = 0; i2 = 0; i1 = 1; i0 = 0;
        #10;
        $finish;
    end

endmodule


