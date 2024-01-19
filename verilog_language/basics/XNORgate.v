//按位异或运算符^是这个，但是没有逻辑异或运算符
//这次是用的异或非运算
module top_module (
    input  a,
    input  b,
    output out
);

  assign out = ~(a ^ b);

endmodule
