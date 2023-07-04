module mux2_if (
  input logic sel, in0, in1,
  output logic out
);

  always_comb
     begin      
        if(sel == 1) out = in1;
  	    else  out = in0;
     end

endmodule