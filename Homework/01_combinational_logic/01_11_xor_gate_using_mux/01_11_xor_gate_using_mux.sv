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
wire out_not_a, out_not_b, out_firsrt_and, out_second_and, out_or;

mux not_a_gate(.d0(1),.d1(0),.sel(a),.y(out_not_a));

mux not_b_gate(.d0(1),.d1(0),.sel(b),.y(out_not_b));

mux first_and_gate(.d0(0),.d1(b),.sel(out_not_a),.y(out_first_and));

mux second_and_gate(.d0(0),.d1(out_not_b),.sel(a),.y(out_second_and));

mux or_gate(.d0(out_second_and),.d1(1),.sel(out_first_and),.y(o));

  // Task:
  // Implement xor gate using instance(s) of mux,
  // constants 0 and 1, and wire connections


endmodule
