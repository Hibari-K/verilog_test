module add_sub(a, b, s, c, swi);

    input [3:0] a;
    input [3:0] b;
    input swi;
    output [3:0] s;
    output c;
    wire c0, c1, c2;
    wire [3:0] b_;

    xor(b_[0], swi, b[0]);
    xor(b_[1], swi, b[1]);
    xor(b_[2], swi, b[2]);
    xor(b_[3], swi, b[3]);

    full_adder HA1(swi, a[0], b_[0], s[0], c0);
    full_adder FA1(c0, a[1], b_[1], s[1], c1);
    full_adder FA2(c1, a[2], b_[2], s[2], c2);
    full_adder FA3(c2, a[3], b_[3], s[3], c);
endmodule
