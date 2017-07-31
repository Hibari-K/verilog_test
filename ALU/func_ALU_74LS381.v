module ALU74ls381(A, B, S, F, C);

input[3:0] A;
input[3:0] B;
input[2:0] S;
output[3:0] F;
output C;

function[4:0] alu; // {C, F}
    input[3:0] A, B;
    input[2:0] S;
    begin
        casex(S)
            3'b000: alu = 5'b00000;
            3'b001: alu = B - A;
            3'b010: alu = A - B;
            3'b011: alu = A + B;
            3'b100: alu = {C,A} ^ {C,B};
            3'b101: alu = {C,A} | {C,B};
            3'b110: alu = {C,A} & {C,B};
            3'b111: alu = 5'bx;
            default: alu = 5'bx;
        endcase
    end
endfunction

assign {C,F} = alu(A, B, S);

endmodule
