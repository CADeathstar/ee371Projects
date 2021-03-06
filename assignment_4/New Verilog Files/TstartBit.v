

module TstartBit(enable, clk, reset, bitStream, BIC, BSC);
	output	reg	enable;
	input  		clk, reset, bitStream;
	input [3:0]	BIC, BSC;
	reg 		ns;
	
	// State encoding
	parameter DISABLE = 1'b0, ENABLE = 1'b1;
	
	always@(*) begin
		case (enable)
			DISABLE: if ((BIC == 4'b0000) && bitStream == 1 ) // (start bit)
						ns = ENABLE;
					else
						ns = DISABLE;
			ENABLE: if ((BIC == 4'b1010) && (BSC == 4'b1000)) //&& bitStream == 0) 
						ns = DISABLE; // (disable last bit in sequence)
					else
						ns = ENABLE;
		endcase
	end
	
	always@(posedge clk) begin
		if (reset)
			enable <= DISABLE;
		else
			enable <= ns;
	end

endmodule
