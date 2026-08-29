module BIT4_ALU(
    input [3:0] A,
    input [3:0]B,
    input [2:0] sel,
    output reg [3:0] y,
    output reg carry
    );
    always @(*) 
    begin
    y = 4'b0000;
    carry = 1'b0;
    case(sel)
        3'b000: {carry,y} = A + B; // adder = a + b
        3'b001: {carry,y} = A - B;  // sub
        3'b010: y = A & B; // and
        3'b011: y = A ^ B; // xor 
        3'b100: y = A | B; // or
        3'b101: y = ~A;   // not
        3'b110: {carry,y} = A + 1'b1; // increament
        3'b111: {carry,y} = A - 1'b1; // decreament
        default: y = 4'b0000;
        endcase
    end
endmodule
