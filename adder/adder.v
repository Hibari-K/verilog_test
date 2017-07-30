//module adder(a0, a1, a2, a3, b0, b1, b2, b3, s0, s1, s2, s3, c);
module adder(a, b, s, c);

    input [3:0] a;
    input [3:0] b;
    output [3:0] s;
    output c;
    wire c0, c1, c2;

    half_adder HA1(a[0], b[0], s[0], c0);
    full_adder FA1(c0, a[1], b[1], s[1], c1);
    full_adder FA2(c1, a[2], b[2], s[2], c2);
    full_adder FA3(c2, a[3], b[3], s[3], c);
endmodule


