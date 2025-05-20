# Design-Implementation-of-an-8-bit-Cryptosystem-using-VSDSquadron-FPGA-Mini
1. Theme:Cryptographic Hardware Engines
2. Idea:The main purpose of this project is to Design and Implement an 8-bit Cryptosystem using VSDSquadron FPGA Mini.
3. Target output:A select line is used to multiplex the system to perform Encryption or Decryption operation as shown in the block Diagram and an initial key is required to encrypt or decrypt the data.

## Block Diagram
<img src="docs/block_diagram.png" width="600"/>

## Flowchart
<img src="docs/flowchart.png" width="600"/>

## Verilog modules
| Sl No | Module Name               | Description                                           |
|:------|:--------------------------|:------------------------------------------------------|
| 01    | top                       | Main logic code                                       |
| 02    | bitwise_xor               | Performs bitwise XOR operation                        |
| 03    | substitution_block        | Similar to S-box used in AES cryptography             |
| 04    | inverse_substitution_block| Inverse S-box                                         |
| 05    | reversible_block          | Combination of reversible logic gates and shift operations |
| 06    | circular_right_shift      | Performs circular right shift operation               |
| 07    | circular_left_shift       | Performs circular left shift operation                |
| 08    | mux2to1                   | 2:1 Mux to choose between encryption and decryption   |


