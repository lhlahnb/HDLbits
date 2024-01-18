//非门用的是~来表示非，但是多位的暂时还不清楚
module top_module (
    input  a,
    output b
);
  assign a = ~b;


endmodule
