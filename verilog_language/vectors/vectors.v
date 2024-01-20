

module top_module(
    input wire [2:0] vec,
    output wire [2:0] outv,
    output wire o0,
    output wire o1,
    output wire o2
);

assign outv = vec;
assign o0 = vec[0];
assign o1 = vec[1];
assign o2 = vec[2];

endmodule
//参考答案
module top_module(
	input [2:0] vec, 
	output [2:0] outv,
	output o2,
	output o1,
	output o0
);
	
	assign outv = vec;

	// This is ok too: assign {o2, o1, o0} = vec;
	assign o0 = vec[0];
	assign o1 = vec[1];
	assign o2 = vec[2];
	
endmodule