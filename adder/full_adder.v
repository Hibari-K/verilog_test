module full_adder(cin, A, B, sum, cout);

    input cin, A, B;
    output sum, cout;
    wire sum1, andCin, carry1, carry2;

    // half adder 1
    xor(sum1, A, B);
    and(carry1, A, B);

    // half adder 2
    xor(sum, cin, sum1);
    and(carry2, cin, sum1);

    // cout
    or(cout, carry1, carry2);
endmodule
