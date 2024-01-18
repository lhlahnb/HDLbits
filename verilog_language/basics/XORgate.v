//XOR操作符的使用，就是把非和或结合起来
//非得使用已经用过了，剩下的是或得使用，和于一样或也有逻辑或和位或得区别，但是现在处理的是一位得不用管
module top_module (
    input  a,
    input  b,
    output out
);
  assign out = ~(a | b);
endmodule
