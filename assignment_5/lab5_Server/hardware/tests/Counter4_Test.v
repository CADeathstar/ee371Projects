// counter.v
`include "../DFlipFlop.sv"
`include "../Counter4.sv"

module testBench;
	wire [3:0] q;
	wire clk, rst;

	Counter4 counter(q, clk, rst);
	Tester aTester(q, clk, rst);

	// file for gtkwave
	initial begin
		// these two files support gtkwave and are required
		$dumpfile("vvp/counter4.vcd");
		$dumpvars(1, counter);
	end
endmodule

module Tester (q, clk, rst);
	input [3:0] q;
	output clk, rst;
	reg clk, rst;
	parameter stimDelay = 20;

	integer i;

	initial begin // Response
		$display("\t\t clk rst \t q \t Time ");
		$monitor("\t\t %b\t %b \t %b", clk, rst, q, $time );
	end

	initial begin // Stimulus 
		clk = 0; rst = 0;
		#stimDelay clk = 1; rst = 1;

		for (i = 0; i < 16; i = i +1) begin
			#stimDelay clk = 0; #stimDelay clk = 1;
		end
		
		rst = 0;
		for (i = 0; i < 16; i = i +1) begin
			#stimDelay clk = 0; #stimDelay clk = 1;
		end

	#(2*stimDelay); // needed to see END of simulation
	$finish; // finish simulation
	end
endmodule 