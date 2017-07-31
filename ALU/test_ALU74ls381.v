module test_ALU74ls381;

reg[3:0] A;
reg[3:0] B;
reg[2:0] S;
wire[3:0] F;
wire C;

parameter STEP = 10;

ALU74ls381 alu(A, B, S, F, C);

initial begin
    $monitor("sel=%b, A=%b, B=%b, {C,F}=%b%b", S, A, B, C, F);

    A = 4'b0011; B = 4'b1111; S = 3'b000; //0000
    #STEP;
    S = 3'b001; //1100
    #STEP;
    A = 4'b1111; B = 4'b0001; S = 3'b010; //1110
    #STEP;
    S = 3'b011; //10000
    #STEP;
    A = 4'b1010; B = 4'b1100; S = 3'b100; //0110
    #STEP;
    S = 3'b101; //1110;
    #STEP;
    S = 3'b110; //1000
    #STEP;
    S = 3'b111; //xxxxx
end

endmodule


