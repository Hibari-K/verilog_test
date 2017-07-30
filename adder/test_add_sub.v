module test_add_sub;

reg [3:0] a;
reg [3:0] b;
reg swi;
wire [3:0] s;
wire c;

parameter STEP = 10;

add_sub as1(.a, .s, .b, .c, .swi);

initial begin
    $monitor("a = %b, b = %b, c = %b, s = %b, swi = %b", a, b, c, s, swi);

    a = 4'b0101; b = 4'b1010; swi = 0;
    #STEP;
    a = 4'b0011; b = 4'b0011; swi = 1;
    #STEP;
    a = 4'b1111; b = 4'b0001;
    #STEP;
    a = 4'b0000; b = 4'b0111;
    
end

endmodule
