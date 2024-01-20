//逻辑与（||）和按位与（|）与的区别
//逻辑与的解果只有0和1，而按位与则不一样是按照对应位来与，自然不是只有对应的位
//问题：如果两个变量位数不一致能不能按位与，如果可以的话，那么是按什么规则来的呢


module top_module(
    input wire [2:0] a,
    input wire [2:0] b,
    output wire out_or_bitwise,
    output wire out_or_logical,
    output wire out_not
 );
assign out_or_bitwise = a|b;
assign out_or_logical = a||b;
assign out_not = {~b,~a};


endmodule 

//参考答案
module top_module( 
    input [2:0] a,
    input [2:0] b,
    output [2:0] out_or_bitwise,
    output out_or_logical,
    output [5:0] out_not
);
assign out_or_bitwise = a | b;
    assign out_or_logical = a || b;
    assign out_not = {~b,~a};
endmodule