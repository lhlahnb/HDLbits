//合并符号{,}的使用，可以把两段甚至很多段合成一段
//如果长度不等，优先从低位开始填充
//The concatenation operator can be used on both the left and right sides of assignments.
//
//input [15:0] in;
//output [23:0] out;
//assign {out[7:0], out[15:8]} = in;         // Swap two bytes. Right side and left side are both 16-bit vectors.
//assign out[15:0] = {in[7:0], in[15:8]};    // This is the same thing.
//assign out = {in[7:0], in[15:8]};       // This is different. The 16-bit vector on the right is extended to
// match the 24-bit vector on the left, so out[23:16] are zero.
// In the first two examples, out[23:16] are not assigned.
module top_module (
    input  [4:0] a,
    b,
    c,
    d,
    e,
    f,
    output [7:0] w,
    x,
    y,
    z
);
  assign {w, x, y, z} = {a, b, c, d, e, f, 2'b11};


endmodule
//参考答案
module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );//
    assign {w,x,y,z} = {a,b,c,d,e,f,2'b11};
    // assign { ... } = { ... };

endmodule