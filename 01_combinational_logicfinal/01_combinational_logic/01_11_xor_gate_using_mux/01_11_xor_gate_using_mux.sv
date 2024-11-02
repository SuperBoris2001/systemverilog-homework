//----------------------------------------------------------------------------
// Example
//----------------------------------------------------------------------------

module mux
(
  input  d0, d1,
  input  sel,
  output y
);

  assign y = sel ? d1 : d0;

endmodule

//----------------------------------------------------------------------------
// Task
//----------------------------------------------------------------------------

module xor_gate_using_mux
(
    input  a,
    input  b,
    output o
);
  wire na;
  // Task:
  // Implement xor gate using instance(s) of mux,
  // constants 0 and 1, and wire connections
  mux mux1(.sel(a), .d0(1'b1), .d1(1'b0), .y(na));
  mux mux2(.sel(b), .d0(a), .d1(na), .y(o));

endmodule
