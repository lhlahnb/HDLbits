//把一个位的输入进行按位的一种逻辑运算
//（逻辑运算符）+变量
module top_module (
    input [3:0] in,
    output out_and,
    output out_or,
    output out_xor
);
  assign out_and = &in;
  assign out_or  = |in;
  assign out_xor = ^in;

endmodule
//参考答案
module top_module( 
    input [3:0] in,
    output out_and,
    output out_or,
    output out_xor
);
assign out_and = &in;
    assign out_or = |in;
    assign out_xor = ^in;
endmodule