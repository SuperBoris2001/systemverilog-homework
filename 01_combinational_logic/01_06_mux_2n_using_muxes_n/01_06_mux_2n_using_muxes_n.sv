//----------------------------------------------------------------------------
// Example
//----------------------------------------------------------------------------

module mux_2_1
(
  input  [3:0] d0, d1,
  input        sel,
  output [3:0] y
);

  assign y = sel ? d1 : d0;

endmodule

//----------------------------------------------------------------------------
// Task
//----------------------------------------------------------------------------

module mux_4_1
(
  input  [3:0] d0, d1, d2, d3,
  input  [1:0] sel,
  output [3:0] y
);
  wire [3:0] s1, s2;
  // Task:
  // Implement mux_4_1 using three instances of mux_2_1
  mux_2_1 mul_1(.d0(d0), .d1(d1), .sel(sel[0]), .y(s1));
  mux_2_1 mul_2(.d0(d2), .d1(d3), .sel(sel[0]), .y(s2));
  mux_2_1 mul_3(.d0(s1), .d1(s2), .sel(sel[1]), .y(y));
endmodule
