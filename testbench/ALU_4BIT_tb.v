module BIT4_ALU_TB;

    reg [3:0] A, B;
    reg [2:0] sel;
    wire [3:0] y;
    wire carry;

    BIT4_ALU b0(
        .A(A),
        .B(B),
        .sel(sel),
        .y(y),
        .carry(carry)
    );

    initial begin

        A = 4'b1100;
        B = 4'b1011;

        sel = 3'b000; #10;  // ADD
        sel = 3'b001; #10;  // SUBTRACT
        sel = 3'b010; #10;  // AND
        sel = 3'b011; #10;  // XOR
        sel = 3'b100; #10;  // OR
        sel = 3'b101; #10;  // NOT
        sel = 3'b110; #10;  // INCREMENT
        sel = 3'b111; #10;  // DECREMENT

        $finish;
    end

endmodule
