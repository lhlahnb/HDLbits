//重复连接符很好用，num重复次数，vector连接的向量内容{num{vector}}
module top_module (
    input  [ 7:0] in,
    output [31:0] out
);

  assign out = {{24{in[7]}}, in[6:0]};  //注意这里{}的使用，一不小心就会用错

endmodule

//参考答案
module top_module (
    input  [ 7:0] in,
    output [31:0] out
);

  // Concatenate two things together:
  // 1: {in[7]} repeated 24 times (24 bits)
  // 2: in[7:0] (8 bits)
  assign out = {{24{in[7]}}, in};

endmodule
