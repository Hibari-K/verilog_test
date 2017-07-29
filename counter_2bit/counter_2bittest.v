module counter2test;

reg clk, reset;
wire [1:0]out;

parameter STEP = 100;

always begin
    clk = 0; #(STEP/2);
    clk = 1; #(STEP/2);
end

counter_2bit c2 (clk, reset, out);

initial begin
    $monitor ("%t: clk = %b, reset = %b, out = %b", $time, clk, reset, out);

    #STEP; reset = 1;
    #STEP; reset = 0;
    #STEP;
    #STEP;
    #STEP;
    #STEP;
    #STEP;

    $finish;
end

endmodule
