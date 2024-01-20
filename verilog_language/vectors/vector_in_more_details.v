//隐式网络的创建，创建出来的都是1——bits的wire型变量
//想要禁止隐式网络的创建，就用`defualt_nettype none
//如果是使用的话就是`defualt_nettype wire这个语句执行那一个看最后一个是哪一个
//verilog里面也可以打包向量作为向量的元素，也就是说可以有向量组
//eg:reg [7:0] mem [255:0];   // 256 unpacked elements, each of which is a 8-bit packed vector of reg.
//reg mem2 [28:0];         // 29 unpacked elements, each of which is a 1-bit reg.
//向量可以截取，可以取出单独一个变量，但是截取的顺序需要和主向量一致
//b的定义  wire [0:7] b;         // 8-bit wire where b[0] is the most-significant bit.
//w[3:0]      // Only the lower 4 bits of w
//x[1]        // The lowest bit of x
//x[1:1]      // ...also the lowest bit of x
//z[-1:-2]    // Two lowest bits of z
//b[3:0]      // Illegal. Vector part-select must match the direction of the declaration.
//b[0:3]      // The *upper* 4 bits of b.
//assign w[3:0] = b[0:3];    // Assign upper 4 bits of b to lower 4 bits of w. w[3]=b[0], w[2]=b[1], etc.
`default_nettype none
module top_module (
    input  wire [15:0] in,
    output wire [ 7:0] out_hi,
    output wire [ 7:0] out_lo
);
  assign out_hi = in[15:0];
  assign out_lo = in[7:0];

endmodule



//参考答案
module top_module (
	input [15:0] in,
	output [7:0] out_hi,
	output [7:0] out_lo
);
	
	assign out_hi = in[15:8];
	assign out_lo = in[7:0];
	
	// Concatenation operator also works: assign {out_hi, out_lo} = in;
	
endmodule
