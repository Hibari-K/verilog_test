module ALU74ls381(A, B, S, F, C);

input[3:0] A;
input[3:0] B;
input[2:0] S;
output reg [3:0] F;
output reg C;

always @(S) begin
    casex(S)
        3'b000: {C,F} = 5'b00000;
        3'b001: {C,F} = B - A;
        3'b010: {C,F} = A - B;
        3'b011: {C,F} = A + B;
        3'b100: {C,F} = {C,A} ^ {C,B};
        3'b101: {C,F} = {C,A} | {C,B};
        3'b110: {C,F} = {C,A} & {C,B};
        3'b111: {C,F} = 5'bx;
        default: {C,F} = 5'bx;
    endcase
end

endmodule
