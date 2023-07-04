module mux2_case (
  input logic sel, in1, in0,
  output logic out      
);

  always_comb
    begin

  	case(sel)
    	   2'b00:  out = in0;
     	   2'b01:  out = in1;
           default:  out = 0;
  	endcase

     end

endmodule