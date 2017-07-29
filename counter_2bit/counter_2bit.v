module counter_2bit(clk, reset, q);

       input clk, reset;
       output[1:0] q;

       reg[1:0] q;

       always @(posedge clk or posedge reset)
       begin
		if(reset) q <= 2'b00;
		else q <= q + 2'b01;
	end
endmodule
	
	