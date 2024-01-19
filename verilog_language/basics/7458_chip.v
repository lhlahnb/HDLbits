module top_module (
    input  p1a,
    p1b,
    p1c,
    p1d,
    p1e,
    p1f,
    output p1y,
    input  p2a,
    p2b,
    p2c,
    p2d,
    output p2y
);

  assign p2y = (p2c & p2d) | (p2a & p2b);
  assign p1y = (p1a & p1b & p1c) | (p1d & p1e & p1f);

endmodule

module top_module (
    input  p1a,
    p1b,
    p1c,
    p1d,
    p1e,
    p1f,
    output p1y,
    input  p2a,
    p2b,
    p2c,
    p2d,
    output p2y
);
  wire a;
  wire b;
  wire c;
  wire d;
  assign a   = (p2c & p2d);
  assign b   = (p2a & p2b);
  assign c   = (p1a & p1b & p1c);
  assign d   = (p1f & p1e & p1d);
  assign p2y = a | b;
  assign p1y = c | d;
endmodule
