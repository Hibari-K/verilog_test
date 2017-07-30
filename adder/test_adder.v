module test_adder;

reg [3:0] a;
reg [3:0] b;
wire [3:0] s;
wire c;

parameter STEP = 10;

adder a1(a, b, s, c);

initial begin
    $monitor("a = %b, b = %b, s = %b, c = %b", a, b, s, c);

    a = 4'b0101; b = 4'b1010;
    #STEP;
    a = 4'b0011; b = 4'b0011;
    #STEP;
    a = 4'b1111; b = 4'b0001;
    
end

endmodule
