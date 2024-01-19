//电线的说的顺序无关紧要，最后是综合成一个电路然后运行，关注的更多的是电路的结构到底符不符合要求
//`default_nettype none 很重要，这个是指是否隐含声明线网型，如果是wire作为结尾就是声明，如果是none作为结尾就是不声明，这个时候你就得自己声明线网型，会麻烦一点
`default_nettype none 
module top_module(
    input wire a,
    input wire b,
    input wire c,
    input wire d,
    output wire out,
    output wire out_n
);
wire e;
wire f;

assign e = a&b;
assign f = c&d;
assign out = e|f;
assign out_n = ~out;


endmodule
//也可以不声明隐含线网型，这样写就可以了。
//module top_module (
//	input a,
//	input b,
//	input c,
//	input d,
//	output out,
//	output out_n );
//	
//	wire w1, w2;		// Declare two wires (named w1 and w2)
//	assign w1 = a&b;	// First AND gate
//	assign w2 = c&d;	// Second AND gate
//	assign out = w1|w2;	// OR gate: Feeds both 'out' and the NOT gate
/
//	assign out_n = ~out;	// NOT gate
	
//endmodule