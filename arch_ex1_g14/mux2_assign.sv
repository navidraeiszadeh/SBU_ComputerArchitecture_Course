module mux2_assign (
  input logic in0, in1, sel, 
  output logic out
);

  assign out = sel ? in1 : in0;

endmodule

