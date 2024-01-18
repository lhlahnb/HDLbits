//现在来看下与运算，与运算分为两种，一种是逻辑与一个是位与，我们现在只处理一位，所以两者效果相同
module top_module (
    input  a,
    input  b,
    output out
);
  assign out = a & b;
endmodule
