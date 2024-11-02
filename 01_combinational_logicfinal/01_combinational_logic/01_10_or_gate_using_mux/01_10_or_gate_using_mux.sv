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

module or_gate_using_mux
(
    input  a,
    input  b,
    output o
);

  // Task:
  wire y;
  // Implement or gate using instance(s) of mux,
  // constants 0 and 1, and wire connections
  mux mux1(.sel(b), .d0(a), .d1(1), .y(y));
  assign o = y;
  
endmodule