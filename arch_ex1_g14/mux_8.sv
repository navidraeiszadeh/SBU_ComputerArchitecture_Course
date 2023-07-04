module mux_8 (
    input logic [2:0] sel,
    input logic [7:0] data,
    output logic out
);

  wire [3:0] first;
  wire [1:0] second;

mux2_assign mux_0 (.sel(sel[0]), .in0(data[0]), .in1(data[1]), .out(first[0]));
mux2_assign mux_1 (.sel(sel[0]), .in0(data[2]), .in1(data[3]), .out(first[1]));
mux2_assign mux_2 (.sel(sel[0]), .in0(data[4]), .in1(data[5]), .out(first[2]));
mux2_assign mux_3 (.sel(sel[0]), .in0(data[6]), .in1(data[7]), .out(first[3]));
mux2_assign mux_4 (.sel(sel[1]), .in0(first[0]), .in1(first[1]), .out(second[0]));
mux2_assign mux_5 (.sel(sel[1]), .in0(first[2]), .in1(first[3]), .out(second[1]));
mux2_assign mux_6 (.sel(sel[2]), .in0(second[0]), .in1(second[1]), .out(out));

endmodule
