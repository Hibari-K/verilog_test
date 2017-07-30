module half_adder(A, B, sum, carry);

    input A, B;
    output sum, carry;

    xor s(sum, A, B);
    and c(carry, A, B);
endmodule

